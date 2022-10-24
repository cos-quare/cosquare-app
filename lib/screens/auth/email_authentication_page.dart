import 'package:costarica_app/theme/style/text_style.dart';
import 'package:costarica_app/theme/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class EmailAuthenticationPage extends StatelessWidget {
  const EmailAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, //ISSUE : why not center?
          children: [
            Column(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
