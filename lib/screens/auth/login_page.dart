import 'package:costarica_app/model/auth/request/sign_in_input.dart';
import 'package:costarica_app/providers/proivders.dart';
import 'package:costarica_app/screens/auth/find_password_page.dart';
import 'package:costarica_app/screens/auth/sign_up_page.dart';
import 'package:costarica_app/theme/style/colors.dart';
import 'package:costarica_app/theme/style/text_style.dart';
import 'package:costarica_app/theme/widgets/check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});
  static String get routeName => 'login';
  static String get routeLocation => '/$routeName';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 72),
                SizedBox(
                  width: Size.infinite.width,
                  child: ColoredBox(
                    color: kCosPurple500,
                    child: Text(
                      'costarica logo',
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  '이메일 주소',
                  style: regular13,
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(hintText: '이메일'),
                ),
                SizedBox(height: 20),
                Text(
                  '비밀번호',
                  style: regular13,
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(hintText: '비밀번호'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        isChecked = value ?? false;
                      },
                    ).backgroundColor(),
                    SizedBox(width: 8),
                    Text(
                      '자동로그인',
                    )
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => ref
                      .read(authProvider.notifier)
                      .signIn(SignInInput(email: "jason@twosun.com", password: "123456")),
                  child: const Text(
                    '로그인',
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => context.push(FindPasswordPage.routeLocation),
                      child: Text(
                        '비밀번호 재설정',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                      child: VerticalDivider(
                        width: 24,
                        color: Color.fromARGB(255, 19, 17, 17),
                        thickness: 1,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        '회원가입',
                      ),
                      onTap: () => context.push(SignUpPage.routeLocation),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  color: kCosGray700,
                  thickness: 1,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => ref
                      .read(authProvider.notifier)
                      .signIn(SignInInput(email: "jason@twosun.com", password: "123456")),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/kakaologo.png',
                        width: 26,
                        height: 24,
                      ),
                      const FittedBox(
                          fit: BoxFit.none,
                          child: Text(
                            '카카오로 로그인',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: const Color(0xff371F1F)),
                          ))
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE8CF3F),
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () => ref
                      .read(authProvider.notifier)
                      .signIn(SignInInput(email: "jason@twosun.com", password: "123456")),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/glogo.png',
                        width: 24,
                        height: 24,
                      ),
                      Text(
                        '구글로 로그인',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: const Color(0xff371F1F)),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE2E2E2),
                  ),
                ),
                SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
