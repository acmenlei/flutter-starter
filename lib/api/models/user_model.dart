import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String id;
  String? planetCode;
  int planetPostAuth;
  String userName;
  String? userAvatar;
  String? userThumbnailAvatar;
  String? gender;
  String? userProfile;
  String? interests;
  String? place;
  String? school;
  String? direction;
  int? graduationYear;
  String? company;
  String? job;
  String? github;
  String? blog;
  int score;
  String? jobStatus;
  int scoreLevel;
  int followeeNum;
  int followNum;
  int followStatus;
  String? vipExpireTime;
  String? vipNumber;
  String userRole;
  int? scoreRank;
  int? postAllThumbNum;
  int? postAllViewNum;
  int needGuide;
  int syncPopupLeftCount;
  String? paymentInfo;

  UserModel({
    required this.id,
    this.planetCode,
    required this.planetPostAuth,
    required this.userName,
    this.userAvatar,
    this.userThumbnailAvatar,
    this.gender,
    this.userProfile,
    this.interests,
    this.place,
    this.school,
    this.direction,
    this.graduationYear,
    this.company,
    this.job,
    this.github,
    this.blog,
    required this.score,
    this.jobStatus,
    required this.scoreLevel,
    required this.followeeNum,
    required this.followNum,
    required this.followStatus,
    this.vipExpireTime,
    this.vipNumber,
    required this.userRole,
    this.scoreRank,
    this.postAllThumbNum,
    this.postAllViewNum,
    required this.needGuide,
    required this.syncPopupLeftCount,
    this.paymentInfo,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
