import 'package:costarica_app/river_pod/authentication/authentication.dart';
import 'package:costarica_app/river_pod/routes/routes.dart';
import 'package:costarica_app/screens/auth/email_authentication_page.dart';
import 'package:costarica_app/screens/auth/find_password_page.dart';
import 'package:costarica_app/screens/auth/login_page.dart';
import 'package:costarica_app/screens/auth/sign_up_page.dart';
import 'package:costarica_app/screens/auth/sign_up_complete_page.dart';
import 'package:costarica_app/screens/common/error_page.dart';
import 'package:costarica_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

void main() async {
  await platformSetup();
  runApp(
    ProviderScope(child: App()),
  );
}

Future<void> platformSetup() async {
  // Flutter 엔진과 위젯의 바인딩 작업
  WidgetsFlutterBinding.ensureInitialized();

  // firebase 초기화
  // await FCMWrapper.instance.initialize();

  // 가로모드 제어
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // 다국어 기본 한국어로 적용
  Intl.defaultLocale = 'ko_KR';
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      title: 'Costarica',
      theme: kCosTheme,
    );
  }
}
