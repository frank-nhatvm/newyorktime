import 'package:newyorktimes/base/entity.dart';


class StoryEntity extends Entity {
  String abstract;
  String title;
  String byline;

  @override
  void parseJson(Map<String, dynamic> json) {
    this.abstract = json['abstract'];
    this.title = json['title'];
  }
}
