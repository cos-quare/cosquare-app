import 'package:costarica_app/river_pod/authentication/authentication.dart';
import 'package:costarica_app/theme/style/colors.dart';
import 'package:costarica_app/theme/style/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MorePage extends ConsumerStatefulWidget {
  const MorePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MorePageState();
}

class _MorePageState extends ConsumerState<MorePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      title: const Text('마이'),
      centerTitle: false,
      automaticallyImplyLeading: false,
      actions: [
        PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: Text('로그아웃'),
            ),
            PopupMenuItem(
              value: 1,
              child: Text('탈퇴하기'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _body() {
    final FocusScopeNode node = FocusScope.of(context);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding, vertical: kDefaultVerticalPadding),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    InkWell(
                      onTap: () async {},
                      child: getProfileImage(),
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: '안녕하세요\n'),
                              TextSpan(text: '홍길동'),
                              TextSpan(text: '님!'),
                            ],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('이름 수정하기'),
                const SizedBox(height: 40),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getProfileImage() {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(300),
            // child: CachedNetworkImage(
            //   imageUrl: defaultUser,
            //   errorWidget: (context, url, error) => Image.network(defaultUser),
            //   fit: BoxFit.cover,
            //   height: 80,
            //   width: 80,
            // ),
          ),
          Positioned(
            top: 60,
            left: 60,
            child: Container(
              alignment: Alignment.center,
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: kCosGray600)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.camera_alt,
                    color: kCosGray600,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _logout() async {
    ref.read(authProvider.notifier).logout();
  }
}
