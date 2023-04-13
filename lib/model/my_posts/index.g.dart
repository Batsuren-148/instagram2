// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyPostModel _$MyPostModelFromJson(Map<String, dynamic> json) => MyPostModel(
      id: json['id'] as int,
      username: json['username'] as String,
      profile: json['profile'] as String,
      postImg: json['postImg'] as String,
      likes: json['likes'] as int?,
      comments: json['comments'] as String?,
      description: json['description'] as String?,
      publishedDate: json['publishedDate'] as String?,
    );

Map<String, dynamic> _$MyPostModelToJson(MyPostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile': instance.profile,
      'postImg': instance.postImg,
      'likes': instance.likes,
      'comments': instance.comments,
      'description': instance.description,
      'publishedDate': instance.publishedDate,
    };
