import 'package:costarica_app/widgets/base_app_bar.dart';
import 'package:flutter/material.dart';

class EmailAuthenticationScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(isBackButton: true, isCloseButton: true),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 32, 0, 48),
              child: Text(
                '회원가입',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xfff8f8f8),
                  letterSpacing: -0.32
                )
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/images/email.png'),
                  width: 64,
                  height: 64,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                      '이메일 인증',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xfff8f8f8),
                        letterSpacing: -0.32,
                      )
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '이메일로 인증 링크가 발송되었습니다.\n1시간 이내로 발송된 링크를 눌러 인증해주세요.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xfff8f8f8),
                    height: 1.5,
                    letterSpacing: -0.32
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            )
          ]
        )
      )
    );
  }
}