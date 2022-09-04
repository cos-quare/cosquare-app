import 'package:costarica_app/widgets/base_check_box.dart';
import 'package:costarica_app/widgets/base_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 360.0,
            height: 640.0,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 140, 285, 8),
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
                          ),
                        ),
                      ),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    child: BaseTextField(
                      hintText: '이메일 또는 사용자 이름',
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 299, 8),
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
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 20),
                    child: BaseTextField(
                      hintText: '비밀번호',
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: [
                      BaseCheckBox(),
                      Text('자동로그인',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff8f8f8),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
