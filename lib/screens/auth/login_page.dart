import 'package:costarica_app/theme/colors.dart';
import 'package:costarica_app/theme/widgets/check_box.dart';
import 'package:costarica_app/theme/widgets/elevated_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
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
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(hintText: '이메일'),
                ),
                SizedBox(height: 20),
                Text(
                  '비밀번호',
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
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
                  onPressed: () {},
                  child: const Text(
                    '로그인',
                  ),
                ).height50(),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '비밀번호 재설정',
                    ),
                    SizedBox(
                      height: 8,
                      child: VerticalDivider(
                        width: 24,
                        color: Color.fromARGB(255, 19, 17, 17),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '회원가입',
                    )
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  color: const Color(0xff333333),
                  thickness: 1,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
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
                ).copyWith(
                    style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xffE8CF3F),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(0, 50)),
                )),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
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
                ).copyWith(
                    style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xffE2E2E2),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(0, 50)),
                )),
                SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
