import 'package:newyorktimes/base/entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'story_entity.dart';
part 'home_entity.g.dart';
@JsonSerializable(nullable: false)
class HomeEntity {
  List<StoryEntity> results;

  HomeEntity(this.results);
  factory HomeEntity.fromJson(Map<String, dynamic> json) => _$HomeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$HomeEntityToJson(this);
}
