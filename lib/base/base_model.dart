import 'package:flutter/material.dart';
import 'package:newyorktimes/base/view_state.dart';


class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  void setState(ViewState newState){
    if(_state != newState){
      _state = newState;
      notifyListeners();
    }
  }

  ViewState get state => _state;

}
