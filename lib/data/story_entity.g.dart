// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryEntity _$StoryEntityFromJson(Map<String, dynamic> json) {
  return StoryEntity(
    json['abstract'] as String,
    json['title'] as String,
    json['byline'] as String,
  );
}

Map<String, dynamic> _$StoryEntityToJson(StoryEntity instance) =>
    <String, dynamic>{
      'abstract': instance.abstract,
      'title': instance.title,
      'byline': instance.byline,
    };
