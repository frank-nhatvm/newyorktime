import 'package:newyorktimes/base/entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'story_entity.g.dart';
@JsonSerializable(nullable: false, explicitToJson: true)
class StoryEntity {
  String abstract;
  String title;
  String byline;

  StoryEntity(this.abstract, this.title, this.byline);
  factory StoryEntity.fromJson(Map<String, dynamic> json) => _$StoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StoryEntityToJson(this);
}
