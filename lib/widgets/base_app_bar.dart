import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBackButton;
  final bool isCloseButton;

  const BaseAppBar({
    Key key,
    this.isBackButton,
    this.isCloseButton,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    var backButton;
    var closeButton;

    if (isBackButton) {
      backButton = IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios));
    }

    if (isCloseButton) {
      closeButton = IconButton(
        icon: const Icon(Icons.close),
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
