import 'package:flutter/material.dart';
import 'package:sport_list/model/sport.dart';
import 'package:sport_list/sport_list.dart';

import 'sport_detail.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SportList(),
        );

      case '/sportInfo':
        final Sport secilen = settings.arguments as Sport;
        return MaterialPageRoute(
          builder: (context) => SportDetail(selectedSport: secilen),
        );
    }
  }
}