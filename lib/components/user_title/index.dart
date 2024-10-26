import 'package:flutter/material.dart';
import 'package:flutter_sliver_test/api/models/user_model.dart';
import 'package:flutter_sliver_test/constants/colors.dart';

/// 通用的用户头像
class UserTitle extends StatelessWidget {
  final UserModel? user;
  final double fontSize;
  final bool bold;
  final Color color;
  const UserTitle(
      {super.key,
      this.user,
      this.fontSize = 14,
      this.bold = true,
      this.color = secondaryColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      user?.userName ?? '',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
