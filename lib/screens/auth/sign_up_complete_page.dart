import 'package:costarica_app/screens/auth/login_page.dart';
import 'package:costarica_app/theme/style/text_style.dart';
import 'package:costarica_app/theme/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignUpCompletePage extends ConsumerStatefulWidget {
  const SignUpCompletePage({super.key});
  static String get routeName => 'sign_up_complete';
  static String get routeLocation => '/$routeName';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpCompletePageState();
}

class _SignUpCompletePageState extends ConsumerState<SignUpCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
          child: Column(
            children: [
              Text('회원가입이 완료되었습니다', style: bold24),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('@pingpong', style: regular14), Text('님', style: regular14)],
              ),
              Text('코스타리카에 가입하신 걸 환영해요!', style: regular14),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => context.go(LoginPage.routeLocation),
                child: const Text(
                  '시작하기',
                ),
              )
            ],
          ),
        )));
  }
}
