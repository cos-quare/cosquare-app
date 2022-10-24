import 'package:costarica_app/widgets/base_app_bar.dart';
import 'package:costarica_app/widgets/base_button.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(isBackButton: true, isCloseButton: true),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 0, 10),
                child: Container(
                  width: 148,
                  height: 36,
                  child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      '비밀번호 재설정',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xfff8f8f8),
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 0, 40),
                child: Text('가입하신 이메일 주소를 입력해 주세요.\n비밀번호 재설정 링크를 이메일로 보내드립니다.',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xfff8f8f8),
                      letterSpacing: -0.32,
                    ))),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
              child: Container(
                width: 59,
                height: 20,
                child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '이메일 주소',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xfff8f8f8),
                      letterSpacing: -0.32,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                child: TextFormField(
                  decoration: InputDecoration(hintText: '이메일 주소'),
                )),
            Padding(padding: const EdgeInsets.fromLTRB(16, 0, 16, 10), child: BaseButton(text: '이메일 전송')),
          ],
        ),
      ),
    );
  }
}
