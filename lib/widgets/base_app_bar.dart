import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBackButton;
  final bool isCloseButton;

  const BaseAppBar({super.key, required this.isBackButton, required this.isCloseButton});

  @override
  Size get preferredSize => Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    var backButton;
    var closeButton;

    if (isBackButton) {
      backButton = IconButton(
        icon: Image.asset(
          'assets/icons/arrow_back.png',
          width: 40,
          height: 40,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      );
    }

    if (isCloseButton) {
      closeButton = IconButton(
        icon: Image.asset(
          'assets/icons/close.png',
          width: 40,
          height: 40,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      );
    }

    return AppBar(
      backgroundColor: const Color(0xff101010),
      leading: backButton,
      actions: <Widget>[
        closeButton,
      ],
    );
  }
}
