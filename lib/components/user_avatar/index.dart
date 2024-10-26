import 'package:flutter/material.dart';
import 'package:flutter_sliver_test/api/models/user_model.dart';

/// 通用的用户头像
class UserAvatar extends StatelessWidget {
  final UserModel? user;
  final double? size;
  const UserAvatar({super.key, this.user, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: NetworkImage(user?.userAvatar ?? ''),
    );
  }
}
