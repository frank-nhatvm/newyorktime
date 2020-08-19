import 'package:newyorktimes/base/base_model.dart';
import 'package:newyorktimes/base/locator.dart';
import 'package:newyorktimes/base/view_state.dart';
import 'package:newyorktimes/data/home_entity.dart';
import 'package:newyorktimes/data/story_entity.dart';
import 'package:newyorktimes/services/home_service.dart';

import '../../data/story_entity.dart';

class HomeModel extends BaseModel {
  HomeService _homeService = getIt<HomeService>();

  HomeEntity homeEntity;

  Future fetchData() async {
    setState(ViewState.Busy);
    try {
      homeEntity = await _homeService.getHomeData();
      setState(ViewState.Retrieved);
    } catch (err) {
      setState(ViewState.Error);
    }

  }
}
