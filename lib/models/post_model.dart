import 'package:flutter_sliver_test/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  String? acceptAnswerId;
  int accessScope;
  List<dynamic> atUserList;
  List<dynamic>? atUserVOList;
  String? bestComment;
  String category;
  int commentNum;
  String? componentName;
  String content;
  String? cover;
  DateTime createTime;
  String? description;
  DateTime editTime;
  String? externalLink;
  int favourNum;
  List<dynamic> fileList;
  bool hasFavour;
  bool hasThumb;
  String id;
  String? language;
  bool? needVip;
  List<String> pictureList;
  String? plainTextDescription;
  String? planetPostId;
  int priority;
  String? relatedId;
  String? relatedLink;
  String reviewMessage;
  int reviewStatus;
  DateTime reviewTime;
  String? reviewerId;
  String? shortLink;
  int showPost;
  String? status;
  List<String> tags;
  int thumbNum;
  String? thumbnailCover;
  String? title;
  DateTime updateTime;
  UserModel user;
  String userId;
  List<dynamic> videoList;
  int viewNum;

  PostModel({
    this.acceptAnswerId,
    required this.accessScope,
    required this.atUserList,
    this.atUserVOList,
    this.bestComment,
    required this.category,
    required this.commentNum,
    this.componentName,
    required this.content,
    this.cover,
    required this.createTime,
    this.description,
    required this.editTime,
    this.externalLink,
    required this.favourNum,
    required this.fileList,
    required this.hasFavour,
    required this.hasThumb,
    required this.id,
    this.language,
    this.needVip,
    required this.pictureList,
    this.plainTextDescription,
    this.planetPostId,
    required this.priority,
    this.relatedId,
    this.relatedLink,
    required this.reviewMessage,
    required this.reviewStatus,
    required this.reviewTime,
    this.reviewerId,
    this.shortLink,
    required this.showPost,
    this.status,
    required this.tags,
    required this.thumbNum,
    this.thumbnailCover,
    this.title,
    required this.updateTime,
    required this.user,
    required this.userId,
    required this.videoList,
    required this.viewNum,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
