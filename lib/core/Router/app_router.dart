import 'dart:developer';

import 'package:actor/app.dart';
import 'package:actor/core/Router/router_const.dart';
import 'package:actor/core/di/locator.dart';
import 'package:actor/feature/images/cubit/images_cubit.dart';
import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:actor/feature/images/view/screen/images_list_screen.dart';
import 'package:actor/feature/media/view/screens/media_list_screen.dart';
import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:actor/feature/people/data/model/person_detailed_model.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/view/screens/person_detailed_screen.dart';
import 'package:actor/feature/people/view/screens/person_list_screen.dart';
import 'package:actor/feature/people/view/widgets/person_Full_widget.dart';
import 'package:actor/feature/people/view/widgets/person_info_widget.dart';
import 'package:actor/feature/people/view/widgets/person_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();

  Route? generateRoute(RouteSettings settings) {
    log("route ${settings.name.toString()}");

    final arg = settings.arguments as Map?;

    switch (settings.name) {
      case RouterConst.popularPersonPath:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt.get<PersonCubit>(),
            child: const PopularListScreen(),
          ),
          settings: settings,
        );

      case RouterConst.personPath:
        final PersonModel model = arg!["model"] as PersonModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt.get<PersonCubit>(),
              child: PersonDetailedScreen(model: model)),
          settings: settings,
        );

      case RouterConst.personFullPath:
        final PersonModel model = arg!["model"] as PersonModel;
        return MaterialPageRoute(
          builder: (_) => PersonFullWidget(model: model),
          settings: settings,
        );
      case RouterConst.personInfoPath:
        final PersonDetailedModel model = arg!["model"] as PersonDetailedModel;
        final ScrollPhysics? physics = arg!["physics"];

        return MaterialPageRoute(
          builder: (_) => PersonInfoWidget(
            model: model,
            physics: physics,
          ),
          settings: settings,
        );

      case RouterConst.imgPath:
        final ImgesModel model = arg!["model"] as ImgesModel;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt.get<ImagesCubit>(),
            child: ImagesListScreen(imgs: model),
          ),
          settings: settings,
        );

      case RouterConst.movieListPath:
        final PersonModel model = arg!["model"] as PersonModel;
        final ScrollPhysics? physics = arg!["physics"];
        return MaterialPageRoute(
          builder: (_) => MediaListScreen(
            moelList: model.media,
            physics: physics,
          ),
          settings: settings,
        );
    }
  }
}
