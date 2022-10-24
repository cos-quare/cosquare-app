import 'package:costarica_app/theme/style/colors.dart';
import 'package:costarica_app/theme/style/text_style.dart';
import 'package:costarica_app/theme/widgets/check_box.dart';
import 'package:costarica_app/theme/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../provider/authentication/authentication_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
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
                        setState(() {
                          isChecked = value ?? false;
                        });
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
                  onPressed: () => context.read<AuthenticationProvider>().login(),
                  child: const Text(
                    '로그인',
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => context.go('/find_password'),
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
                      onTap: () => context.go('/sign_up'),
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
                  onPressed: () => context.read<AuthenticationProvider>().login(),
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
                  onPressed: () => context.read<AuthenticationProvider>().login(),
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
