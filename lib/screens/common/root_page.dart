import 'dart:math';

import 'package:cosquare_app/providers/auth/auth_state.dart';
import 'package:cosquare_app/providers/proivders.dart';
import 'package:cosquare_app/theme/style/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootPage extends ConsumerStatefulWidget {
  const RootPage({super.key});
  static String get routeName => '/';
  static String get routeLocation => '$routeName';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  @override
  void initState() {
    super.initState();
    _isLogin();
  }

  _isLogin() async {
    await Future.delayed(
      const Duration(milliseconds: 750),
      () => ref.read(authProvider.notifier).changeAuth(_randomAuth()),
    );
  }

  AuthState _randomAuth() {
    bool random = Random().nextBool();
    return random ? AuthAuthorized(email: 'jason@twosun.com', password: '123456') : AuthUnauthorized();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    SizeConfig().init(context);
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
