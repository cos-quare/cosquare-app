import 'package:costarica_app/screens/auth/email_authentication_page.dart';
import 'package:costarica_app/theme/style/text_style.dart';
import 'package:costarica_app/theme/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FindPasswordPage extends ConsumerStatefulWidget {
  const FindPasswordPage({super.key});
  static String get routeName => 'find_password';
  static String get routeLocation => '/$routeName';
  @override
  ConsumerState<FindPasswordPage> createState() => _FindPasswordPageState();
}

class _FindPasswordPageState extends ConsumerState<FindPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '비밀번호 재설정',
                style: bold24,
              ),
              SizedBox(height: 10),
              Text('가입하신 이메일 주소를 입력해 주세요.\n비밀번호 재설정 링크를 이메일로 보내드립니다.', style: regular14),
              SizedBox(height: 40),
              Text(
                '이메일 주소',
                style: regular13,
              ),
              SizedBox(height: 8),
              TextFormField(),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('이메일 전송'),
                onPressed: () => context.replace(EmailAuthenticationPage.routeLocation),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
