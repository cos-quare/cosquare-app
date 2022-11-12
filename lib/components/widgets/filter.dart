import 'package:cosquare_app/theme/style/colors.dart';
import 'package:cosquare_app/theme/widgets/check_box.dart';
import 'package:flutter/material.dart';

class MatchingFilter extends StatefulWidget {
  const MatchingFilter({
    Key? key,
  }) : super(key: key);

  @override
  State<MatchingFilter> createState() => _MatchingFilterState();
}

class _MatchingFilterState extends State<MatchingFilter> {
  bool isCosplayer = false;
  bool isPhotographer = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0, left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          locationSelect(),
          roleSelect(),
        ],
      ),
    );
  }

  Row roleSelect() {
    return Row(
      children: [
        checkRole(myRole: isPhotographer, role: "사진사"),
        SizedBox(width: 20),
        checkRole(myRole: isCosplayer, role: "코스어"),
      ],
    );
  }

  InkWell locationSelect() {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text('전국', style: TextStyle(fontSize: 16)),
            SizedBox(width: 8),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 16,
            )
          ]),
          SizedBox(height: 4),
          Text(
            "언제든지",
            style: TextStyle(fontSize: 14, color: kCosGray400),
          )
        ],
      ),
    );
  }

  /// TODO : Not Working
  Row checkRole({required bool myRole, required String role}) {
    return Row(
      children: [
        Checkbox(
          value: myRole,
          onChanged: (value) {
            setState(() {
              myRole = !myRole;
            });
          },
        ).backgroundColor(),
        SizedBox(width: 8),
        Text(role),
      ],
    );
  }
}
