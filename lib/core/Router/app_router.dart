import 'package:actor/core/Router/router_const.dart';
import 'package:actor/feature/people/view/screens/person_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      //  case RouterConst.homePath:
      //  return MaterialPageRoute(
      //       builder: (_) => const Home(),
      //       settings: settings
      //     );
      case RouterConst.popularPersonPath:
        return MaterialPageRoute(
            builder: (_) => const PersonListScreen(), settings: settings);
      
    }
  }
}
