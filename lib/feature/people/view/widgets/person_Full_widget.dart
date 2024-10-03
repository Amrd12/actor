import 'dart:developer';

import 'package:actor/core/Router/app_router.dart';
import 'package:actor/core/Router/navigation_model.dart';
import 'package:actor/core/Router/router_const.dart';
import 'package:actor/core/widgets/custom_img.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:flutter/material.dart';

class PersonFullWidget extends StatelessWidget {
  const PersonFullWidget({super.key, required this.model});
  final PersonModel model;
  static final GlobalKey<NavigatorState> _appKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    log(model.toString());

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 300.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(model.name),
            background: CustomImg(model.image),
          ),
        ),
        SliverToBoxAdapter(
          child: _ButtonList(
            model: model,
            appKey: _appKey,
          ),
        ),
        SliverFillRemaining(
          child: Navigator(
              key: _appKey,
              initialRoute: RouterConst.personInfoPath,
              onGenerateRoute: (RouteSettings settings) {
                return AppRouter().generateRoute(
                  RouteSettings(name: settings.name, arguments: {
                    "model": model,
                    "physics": NeverScrollableScrollPhysics()
                  }),
                );
              }),
        )
      ],
    );
  }
}

class _ButtonList extends StatefulWidget {
  const _ButtonList({super.key, required this.appKey, required this.model});
  final PersonModel model;
  final GlobalKey<NavigatorState> appKey;
  @override
  State<_ButtonList> createState() => __ButtonListState();
}

class __ButtonListState extends State<_ButtonList> {
  final List<NavigationModel> icons = const [
    NavigationModel(
        Icons.info_outline, Icons.info, true, RouterConst.personInfoPath),
    NavigationModel(
        Icons.image_outlined, Icons.image, true, RouterConst.imgPath),
    NavigationModel(
        Icons.movie_outlined, Icons.movie, true, RouterConst.movieListPath),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...icons.map((e) => IconButton(
                onPressed: () => _onClick(e),
                icon: Icon(e.isActive ? e.activeIcon : e.icon)))
          ],
        ));
  }

  void _onClick(NavigationModel e) {
    widget.appKey.currentState!
        .pushReplacementNamed(e.route, arguments: widget.model);
    e = e.copyWith(isActive: true);
    icons.map(
        (ee) => ee.route != e.route ? ee = ee.copyWith(isActive: false) : null);
    setState(() {});
  }
}
