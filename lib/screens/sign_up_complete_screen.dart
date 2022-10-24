import 'package:costarica_app/widgets/base_app_bar.dart';
import 'package:costarica_app/widgets/base_button.dart';
import 'package:flutter/material.dart';

class SignUpCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(isBackButton: false, isCloseButton: true),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 32, 0, 20),
                  child: Text(
                    '회원가입이 완료되었습니다',
                    style:TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xfff8f8f8),
                      letterSpacing: -0.32
                    )
                  )
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          '@pingpong',
                          style:TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xfff8f8f8),
                              letterSpacing: -0.32
                          )
                      ),
                      Text(
                        '님',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xfff8f8f8),
                          letterSpacing: -0.32
                        )
                      )
                    ],
                  )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 2, 0, 20),
                  child: Text(
                    '코스타리카에 가입하신 걸 환영해요!',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xfff8f8f8),
                      letterSpacing: -0.32
                    )
                  )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: BaseButton(text: '시작하기')
                )
              ],
            )
          )
      )
    );
  }
}
