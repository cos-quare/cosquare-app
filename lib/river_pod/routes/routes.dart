// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:costarica_app/river_pod/authentication/authentication.dart';
import 'package:costarica_app/screens/auth/login_page.dart';
import 'package:costarica_app/screens/common/error_page.dart';
import 'package:costarica_app/screens/home/home_page.dart';
import 'package:costarica_app/screens/home/more_page.dart';
import 'package:costarica_app/screens/home/product_page.dart';
import 'package:costarica_app/screens/root_page.dart';
import 'package:costarica_app/screens/tab_page.dart';
import 'package:costarica_app/util/simple_logger.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final isAuth = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final areWeLoggingIn = state.location == LoginPage.routeLocation;
      if (!isAuth) return areWeLoggingIn ? null : LoginPage.routeLocation;

      if (areWeLoggingIn) return HomePage.routeLocation;

      return null;
    },
    routes: [
      GoRoute(
        name: HomePage.routeName,
        path: HomePage.routeLocation,
        builder: (context, _) => const HomePage(),
      ),
      GoRoute(
        name: LoginPage.routeName,
        path: LoginPage.routeLocation,
        builder: (context, _) => const LoginPage(),
      ),
      ShellRoute(
        pageBuilder: (context, state, child) {
          return MaterialPage(
            key: state.pageKey,
            child: TabPage(child: child),
          );
        },
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) {
              return const MaterialPage(child: HomePage());
            },
          ),
          GoRoute(
            path: '/product',
            pageBuilder: (context, state) {
              return const MaterialPage(child: ProductPage());
            },
          ),
          GoRoute(
            path: '/more',
            pageBuilder: (context, state) {
              return const MaterialPage(child: MorePage());
            },
          ),
        ],
      ),
      GoRoute(
        path: '/errorPage',
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: ErrorPage(
              exception: Exception('error'),
            ),
          );
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(key: state.pageKey, child: ErrorPage(exception: state.error));
    },
  );
});
