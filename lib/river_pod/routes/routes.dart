// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:costarica_app/screens/auth/email_authentication_page.dart';
import 'package:costarica_app/screens/auth/find_password_page.dart';
import 'package:costarica_app/screens/auth/sign_up_complete_page.dart';
import 'package:costarica_app/screens/auth/sign_up_page.dart';
import 'package:costarica_app/screens/home/album_page.dart';
import 'package:costarica_app/screens/home/feed_page.dart';
import 'package:costarica_app/screens/home/matching_page.dart';
import 'package:costarica_app/screens/home/my_page.dart';
import 'package:costarica_app/screens/home/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:costarica_app/river_pod/authentication/authentication.dart';
import 'package:costarica_app/screens/auth/login_page.dart';
import 'package:costarica_app/screens/common/error_page.dart';
import 'package:costarica_app/screens/common/root_page.dart';
import 'package:costarica_app/screens/tab_page.dart';
import 'package:costarica_app/util/simple_logger.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'tab');

final routerProvider = Provider<GoRouter>((ref) {
  final isAuth = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: LoginPage.routeLocation,
    redirect: (context, state) {
      final areWeLoggingIn = state.location == LoginPage.routeLocation;
      if (!isAuth) return areWeLoggingIn ? null : LoginPage.routeLocation;

      if (areWeLoggingIn) return FeedPage.routeLocation;

      return null;
    },
    routes: [
      GoRoute(
        name: LoginPage.routeName,
        path: LoginPage.routeLocation,
        builder: (context, _) => const LoginPage(),
      ),
      GoRoute(
        name: FindPasswordPage.routeName,
        path: FindPasswordPage.routeLocation,
        builder: (context, _) => const FindPasswordPage(),
      ),
      GoRoute(
        name: EmailAuthenticationPage.routeName,
        path: EmailAuthenticationPage.routeLocation,
        builder: (context, _) => const EmailAuthenticationPage(),
      ),
      GoRoute(
        name: SignUpPage.routeName,
        path: SignUpPage.routeLocation,
        builder: (context, _) => const SignUpPage(),
      ),
      GoRoute(
        name: SignUpCompletePage.routeName,
        path: SignUpCompletePage.routeLocation,
        builder: (context, _) => const SignUpCompletePage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return TabPage(child: child);
        },
        routes: [
          GoRoute(
            name: FeedPage.routeName,
            path: FeedPage.routeLocation,
            builder: (context, _) => const FeedPage(),
          ),
          GoRoute(
            name: MatchingPage.routeName,
            path: MatchingPage.routeLocation,
            builder: (context, _) => const MatchingPage(),
          ),
          GoRoute(
            name: AlbumPage.routeName,
            path: AlbumPage.routeLocation,
            builder: (context, _) => const AlbumPage(),
          ),
          GoRoute(
            name: MyPage.routeName,
            path: MyPage.routeLocation,
            builder: (context, _) => const MyPage(),
          ),
          GoRoute(
            name: SettingPage.routeName,
            path: SettingPage.routeLocation,
            builder: (context, _) => const SettingPage(),
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
