

import 'package:flutter/material.dart';
import 'package:newyorktimes/screens/home/home_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }

  }
}