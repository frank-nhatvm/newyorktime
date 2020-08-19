import 'package:newyorktimes/base/base_model.dart';
import 'package:newyorktimes/base/base_network_service.dart';
import 'package:newyorktimes/base/locator.dart';
import 'package:newyorktimes/base/view_state.dart';
import 'package:newyorktimes/data/story_entity.dart';
import 'package:newyorktimes/services/home_service.dart';

class HomeModel extends BaseModel {
  HomeService _homeService = getIt<HomeService>();

  List<StoryEntity> listStories = [];

  Future fetchData() async {
    setState(ViewState.Busy);
    try {
      listStories = await _homeService.getListStories();
      setState(ViewState.Retrieved);
    }catch (err) {
      setState(ViewState.Error);
    }

  }
}
