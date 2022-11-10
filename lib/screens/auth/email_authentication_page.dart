import 'package:cosquare_app/theme/style/text_style.dart';
import 'package:cosquare_app/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'login_page.dart';

class EmailAuthenticationPage extends ConsumerStatefulWidget {
  const EmailAuthenticationPage({super.key});
  static String get routeName => 'email_authentication';
  static String get routeLocation => '/$routeName';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EmailAuthenticationPageState();
}

class _EmailAuthenticationPageState extends ConsumerState<EmailAuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
        child: Column(
          children: [
            Text('회원가입', style: bold24),
            SizedBox(height: 40),
            Image.asset('assets/images/email.png'),
            SizedBox(height: 20),
            Text('이메일 인증', style: bold16),
            SizedBox(height: 10),
            Text(
              '이메일로 인증 링크가 발송되었습니다.\n1시간 이내로 발송된 링크를 눌러 인증해주세요.',
              style: regular14,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go(LoginPage.routeLocation),
              child: const Text(
                '시작하기',
              ),
            )
          ],
        ),
      ),
    );
  }
}
