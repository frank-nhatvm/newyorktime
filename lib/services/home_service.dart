import 'package:newyorktimes/base/base_network_service.dart';
import 'package:newyorktimes/data/story_entity.dart';

class HomeService {
  BaseNetworkService _baseNetworkService;

  Future<List<StoryEntity>> getListStories() async {
    _baseNetworkService = BaseNetworkService();
    _baseNetworkService.setMethod(HTTP_METHOD.GET);
    _baseNetworkService.setBasePath('svc/topstories/v2/home.json');
    _baseNetworkService.addParameter(
        'api-key', 't4EG49MADcsJR9zFouDYO5ANI1rpJTAf');

    try {
      Map<String, dynamic> response = await _baseNetworkService.request();
      List<StoryEntity> listStories = [];
      response['results'].foreach((storyMap) {
        StoryEntity story = StoryEntity();
        story.parseJson(storyMap);
        listStories.add(story);
      });
      return listStories;
    } catch (err) {
      throw err.toString();
    }
  }
}
