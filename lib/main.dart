import 'package:costarica_app/provider/authentication/authentication_provider.dart';
import 'package:costarica_app/screens/auth/find_password_page.dart';
import 'package:costarica_app/screens/auth/login_page.dart';
import 'package:costarica_app/screens/auth/signup_page.dart';
import 'package:costarica_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationProvider>(
          create: (_) => AuthenticationProvider(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        title: 'Costarica',
        theme: kCosTheme,
      ),
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const LoginPage(), routes: <GoRoute>[
        GoRoute(path: 'sign_up', builder: (context, state) => const SignUpPage()),
        GoRoute(path: 'find_password', builder: (context, state) => const FindPasswordPage()),
      ]),
    ],
    errorBuilder: (context, state) => LoginPage(),
  );
}
