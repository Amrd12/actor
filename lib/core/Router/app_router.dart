import 'dart:developer';

import 'package:actor/app.dart';
import 'package:actor/core/Router/router_const.dart';
import 'package:actor/core/di/locator.dart';
import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/view/screens/person_detailed_screen.dart';
import 'package:actor/feature/people/view/screens/person_list_screen.dart';
import 'package:actor/feature/people/view/widgets/person_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  Route? generateRoute(RouteSettings settings) {
    log(settings.name.toString());

    switch (settings.name) {
      case RouterConst.popularPersonPath:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt.get<PersonCubit>(),
            child: const PersonListScreen(),
          ),
          settings: settings,
        );

      case RouterConst.personPath:
        final PersonModel model = settings.arguments as PersonModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt.get<PersonCubit>(),
              child: PersonDetailedScreen(model: model)),
          settings: settings,
        );
    }
  }
}
