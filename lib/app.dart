import 'dart:developer';

import 'package:actor/core/Router/app_router.dart';
import 'package:actor/core/Router/navigation_model.dart';
import 'package:actor/core/Router/router_const.dart';
import 'package:actor/core/widgets/custom_navigation_bar.dart';
import 'package:actor/feature/people/view/screens/person_list_screen.dart';
import 'package:flutter/material.dart';

class ActorApp extends StatefulWidget {
  const ActorApp({super.key});

  @override
  State<ActorApp> createState() => _ActorAppState();
}

class _ActorAppState extends State<ActorApp> {

  static const List<NavigationModel> navigationList = [
    NavigationModel(Icons.explore_outlined, Icons.explore, true,
        RouterConst.popularPersonPath),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Navigator(
            key: AppRouter.navigatorKey,
            onGenerateRoute: AppRouter().generateRoute,
            onDidRemovePage: (page) {
              log(page.toString());
            },
          ),
          const Align(
            alignment: Alignment(0, .95),
            child: CustomNavigationBar(navigationList: navigationList),
          )
        ],
      ),
    );
  }
}
