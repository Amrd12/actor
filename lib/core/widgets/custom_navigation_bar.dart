import 'package:actor/core/Router/app_router.dart';
import 'package:actor/core/Router/navigation_model.dart';
import 'package:actor/core/helpers/color/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
    required this.navigationList,
    this.alignment,
    this.decoration,
  });
  final Alignment? alignment;
  final BoxDecoration? decoration;
  final List<NavigationModel> navigationList;
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late BoxDecoration decoration = widget.decoration ??
      BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColors.myYellowLight);

  late Alignment alignment = widget.alignment ?? const Alignment(0, 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // width: MediaQuery.of(context).size.width - 15,
      // alignment: alignment,
      decoration: decoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: widget.navigationList
            .map((NavigationModel e) => Flexible(
                  child: IconButton(
                    icon: e.modelWidget(),
                    iconSize: 30,
                    onPressed: () => _onItemClick(e),
                  ),
                ))
            .toList(),
      ),
    );
  }

  void _onItemClick(NavigationModel e) {
    // AppRouter.navigatorKey.currentState!.pushNamed(e.route);
  }
}
