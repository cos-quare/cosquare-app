import 'package:costarica_app/widgets/base_app_bar.dart';
import 'package:costarica_app/widgets/base_button.dart';
import 'package:costarica_app/widgets/base_text_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(isBackButton: true, isCloseButton: true),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 0, 40),
                child: Container(
                  width: 82,
                  height: 36,
                  child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      '회원가입',
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
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
              child: Container(
                width: 59,
                height: 20,
                child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '사용자 이름',
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
                child: BaseTextField(hintText: '사용자 이름', isPassword: false)),
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
                child: BaseTextField(hintText: '이메일 주소', isPassword: false)),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
              child: Container(
                width: 45,
                height: 20,
                child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '비밀번호',
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
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 39),
                child: BaseTextField(hintText: '비밀번호', isPassword: true)),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: BaseButton(text: '회원가입')),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                        child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      strutStyle: StrutStyle(fontSize: 13.0),
                      text: TextSpan(
                        text: '회원가입 시 Costarica 서비스 ',
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffc5c5c5),
                            height: 1.5,
                            letterSpacing: -0.32),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '이용 약관',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff3f97ff),
                                  height: 1.5,
                                  letterSpacing: -0.32)),
                          TextSpan(
                              text: '과 ',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffc5c5c5),
                                  height: 1.5,
                                  letterSpacing: -0.32)),
                          TextSpan(
                              text: '개인정보 보호 정책',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff3f97ff),
                                  height: 1.5,
                                  letterSpacing: -0.32)),
                          TextSpan(
                              text: '에 동의하게 됩니다.',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffc5c5c5),
                                  height: 1.5,
                                  letterSpacing: -0.32)),
                        ],
                      ),
                    )),
                  ],
                )))
          ],
        ),
      ),
    );
  }
}
