import 'package:flutter/material.dart';
import 'package:flutter_sliver_test/api/models/post_model.dart';
import 'package:flutter_sliver_test/components/my_divider/index.dart';
import 'package:flutter_sliver_test/components/user_avatar/index.dart';
import 'package:flutter_sliver_test/components/user_title/index.dart';
import 'package:flutter_sliver_test/constants/colors.dart';

/// 通用的内容型卡片
class PostCard extends StatelessWidget {
  final PostModel data;
  const PostCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 卡片标题
            _buildTitle(),
            // 卡片头像
            _buildUserInfo(),
            // 卡片内容,
            _buildDescription(),
            // action...
            _buildAction(),
            const MyDivider(margin: 12,),
            // 卡片内容
            const Divider(
              height: 0.1,
              thickness: 0.3,
            ),
          ],
        ));
  }

  // 标题
  Widget _buildTitle() {
    String title = data.title ?? '';
    if (title.isEmpty) {
      return Container();
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontSize: 16, color: secondaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }

  // 卡片上用户信息
  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          UserAvatar(
            user: data.user,
            size: 10,
          ),
          const SizedBox(
            width: 6,
          ),
          UserTitle(
            user: data.user,
            color: tertiaryColor,
            fontSize: 13,
          ),
        ],
      ),
    );
  }

  // 卡片简介
  Widget _buildDescription() {
    String content =
        data.plainTextDescription ?? data.content ?? '';
    return Text(
      content,
      style: const TextStyle(color: tertiaryColor, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  // 操作区（点赞/评论/收藏）
  Widget _buildAction() {
    // 使用一个列表来存储操作项
    final actions = [
      _buildActionItem(Icons.thumb_up_alt_outlined, data.thumbNum ?? 0),
      // _buildActionItem(Icons.star_border, widget.data.favourNum ?? 0),
      _buildActionItem(Icons.mode_comment_outlined, data.commentNum ?? 0),
    ];

    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: actions,
      ),
    );
  }

  // 构建单个操作项
  Widget _buildActionItem(IconData icon, int count) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: tertiaryColor,
          size: 15,
        ),
        const SizedBox(width: 4),
        Text(
          count.toString(),
          style: const TextStyle(color: tertiaryColor),
        ),
        const SizedBox(width: 16), // 添加间隔
      ],
    );
  }
}
