import 'package:json_annotation/json_annotation.dart';
// Json serializable library-g suulgasan bol zaawal part gedgiig oruulj ireh ystoi
// tged nerlehdee file-iinh nernii araas g.dart gej bichne
part 'index.g.dart';

// Jsonserializable duudaj ogoh ystoi
@JsonSerializable()
class MyPostModel {
  int id;
  String username, profile, postImg;
  int? likes;
  String? comments, description;
  String? publishedDate;

  MyPostModel({
    required this.id,
    required this.username,
    required this.profile,
    required this.postImg,
    this.likes,
    this.comments,
    this.description,
    this.publishedDate,
  });

  static List<MyPostModel> fromList(List<dynamic> data) =>
      data.map((e) => MyPostModel.fromJson(e)).toList();

  factory MyPostModel.fromJson(Map<String, dynamic> json) =>
      _$MyPostModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyPostModelToJson(this);

  // ingej bichsniihe daraa terminal deer:
  // flutter pub run build_runner build gej bichne
}
