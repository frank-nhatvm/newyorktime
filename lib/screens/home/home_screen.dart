import 'package:flutter/material.dart';
import 'package:newyorktimes/base/base_view.dart';
import 'package:newyorktimes/base/view_state.dart';
import 'package:newyorktimes/screens/home/home_model.dart';

import '../../data/story_entity.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelFetchData: (model) => model.fetchData(),
      builder: (context, model, child) => Scaffold(
        body: Container(child: _buildBodyByState(model)),
      ),
    );
  }

  _buildBodyByState(HomeModel model) {
    switch (model.state) {
      case ViewState.Busy:
        return Center(
          child: CircularProgressIndicator(),
        );

      case ViewState.Retrieved:
        List<StoryEntity> stories = model.homeEntity.results;
        return Container(
          child: stories.length > 0
              ? ListView.builder(
                    itemCount: stories.length,
                      itemBuilder: (BuildContext context, int index) {
                    final story = stories[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(story.title),
                        Text(story.byline),
                        Text(story.abstract),
                      ],
                    );
                  })
              : Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('There is no stories'),
                ),
        );
      case ViewState.Error:
        return Center(
          child: Text('Something went wrong. Please try again'),
        );
    }
  }
}
