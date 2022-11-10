import 'package:cosquare_app/screens/auth/sign_up_complete_page.dart';
import 'package:cosquare_app/theme/style/colors.dart';
import 'package:cosquare_app/theme/style/text_style.dart';
import 'package:cosquare_app/components/app_bar.dart';
import 'package:cosquare_app/components/text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});
  static String get routeName => 'sign_up_process';
  static String get routeLocation => '/$routeName';
  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late TextEditingController _emailController;
  late FocusNode _emailFocusNode;
  late TextEditingController _passwordController;
  late FocusNode _passwordFocusNode;
  late TextEditingController _nameController;
  late FocusNode _nameFocusNode;

  @override
  void initState() {
    _emailController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordController = TextEditingController();
    _passwordFocusNode = FocusNode();
    _nameController = TextEditingController();
    _nameFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    _nameController.dispose();
    _nameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36),
                SizedBox(
                  width: Size.infinite.width,
                  child: Text(
                    '회원가입',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '사용자 이름',
                  style: regular13,
                ),
                SizedBox(height: 8),
                CSTextFormField.clear(
                  controller: _nameController,
                  focusNode: _nameFocusNode,
                  decoration: InputDecoration(
                    hintText: '사용자 이름',
                    suffixIcon: _nameController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _nameController.clear(),
                            child: Icon(Icons.cancel, color: kCosGray150),
                          ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '이메일 주소',
                  style: regular13,
                ),
                SizedBox(height: 8),
                CSTextFormField.clear(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  decoration: InputDecoration(
                    hintText: '이메일 주소',
                    suffixIcon: _emailController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _emailController.clear(),
                            child: Icon(Icons.cancel, color: kCosGray150),
                          ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '비밀번호',
                  style: regular13,
                ),
                SizedBox(height: 8),
                CSTextFormField.clear(
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  decoration: InputDecoration(
                    hintText: '비밀번호',
                    suffixIcon: _passwordController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _passwordController.clear(),
                            child: Icon(Icons.cancel, color: kCosGray150),
                          ),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => context.replace(SignUpCompletePage.routeLocation),
                  child: Text('회원가입'),
                ),
                SizedBox(height: 10),
                Text.rich(TextSpan(
                  text: '회원가입 시 Costarica 서비스 ',
                  style: regular13,
                  children: [
                    TextSpan(
                      text: '이용약관',
                      style: TextStyle(
                        color: kCosLink,
                      ),
                    ),
                    TextSpan(
                      text: ' 및 ',
                    ),
                    TextSpan(
                      text: '개인정보 보호 정책',
                      style: TextStyle(
                        color: kCosLink,
                      ),
                    ),
                    TextSpan(
                      text: '에 동의하게 됩니다.',
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
