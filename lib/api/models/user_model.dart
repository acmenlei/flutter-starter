// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString?);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String? userModelToJson(UserModel data) => json.encode(data.toJson());

@JsonSerializable()
class UserModel {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "planetCode")
  String? planetCode;
  @JsonKey(name: "planetPostAuth")
  int? planetPostAuth;
  @JsonKey(name: "userName")
  String? userName;
  @JsonKey(name: "userAvatar")
  dynamic userAvatar;
  @JsonKey(name: "userThumbnailAvatar")
  dynamic userThumbnailAvatar;
  @JsonKey(name: "gender")
  dynamic gender;
  @JsonKey(name: "userProfile")
  dynamic userProfile;
  @JsonKey(name: "int?erests")
  List<dynamic>? interests;
  @JsonKey(name: "place")
  dynamic place;
  @JsonKey(name: "school")
  dynamic school;
  @JsonKey(name: "direction")
  dynamic direction;
  @JsonKey(name: "graduationYear")
  dynamic graduationYear;
  @JsonKey(name: "company")
  dynamic company;
  @JsonKey(name: "job")
  dynamic job;
  @JsonKey(name: "github")
  dynamic github;
  @JsonKey(name: "blog")
  dynamic blog;
  @JsonKey(name: "score")
  int? score;
  @JsonKey(name: "jobStatus")
  dynamic jobStatus;
  @JsonKey(name: "scoreLevel")
  int? scoreLevel;
  @JsonKey(name: "followeeNum")
  int? followeeNum;
  @JsonKey(name: "followNum")
  int? followNum;
  @JsonKey(name: "followStatus")
  int? followStatus;
  @JsonKey(name: "vipExpireTime")
  int? vipExpireTime;
  @JsonKey(name: "vipNumber")
  String? vipNumber;
  @JsonKey(name: "userRole")
  String? userRole;
  @JsonKey(name: "scoreRank")
  dynamic scoreRank;
  @JsonKey(name: "postAllThumbNum")
  dynamic postAllThumbNum;
  @JsonKey(name: "postAllViewNum")
  dynamic postAllViewNum;
  @JsonKey(name: "needGuide")
  int? needGuide;
  @JsonKey(name: "syncPopupLeftCount")
  int? syncPopupLeftCount;
  @JsonKey(name: "paymentInfo")
  dynamic paymentInfo;

  UserModel({
    required this.id,
    required this.planetCode,
    required this.planetPostAuth,
    required this.userName,
    required this.userAvatar,
    required this.userThumbnailAvatar,
    required this.gender,
    required this.userProfile,
    required this.interests,
    required this.place,
    required this.school,
    required this.direction,
    required this.graduationYear,
    required this.company,
    required this.job,
    required this.github,
    required this.blog,
    required this.score,
    required this.jobStatus,
    required this.scoreLevel,
    required this.followeeNum,
    required this.followNum,
    required this.followStatus,
    required this.vipExpireTime,
    required this.vipNumber,
    required this.userRole,
    required this.scoreRank,
    required this.postAllThumbNum,
    required this.postAllViewNum,
    required this.needGuide,
    required this.syncPopupLeftCount,
    required this.paymentInfo,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String?, dynamic> toJson() => _$UserModelToJson(this);
}
