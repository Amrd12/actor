// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'package:actor/core/helpers/color/my_colors.dart';

class NavigationModel {
  final IconData icon;
  final IconData activeIcon;

  final bool isActive;
  final String route;

  const NavigationModel(this.icon, this.activeIcon, this.isActive, this.route);

  Widget modelWidget() => Icon(
        isActive ? activeIcon : icon,
        color: isActive ? MyColors.myYellow : MyColors.myWhite,
      );

  NavigationModel copyWith({
    IconData? icon,
    IconData? activeIcon,
    bool? isActive,
    String? route,
  }) {
    return NavigationModel(
      icon ?? this.icon,
      activeIcon ?? this.activeIcon,
      isActive ?? this.isActive,
      route ?? this.route,
    );
  }
}
