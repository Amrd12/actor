import 'dart:developer';

import 'package:actor/feature/media/view/screens/media_list_screen.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:flutter/material.dart';

class PersonFullWidget extends StatelessWidget {
  const PersonFullWidget({super.key, required this.model});
  final PersonModel model;
  @override
  Widget build(BuildContext context) {
    log(model.toString());
    return MediaListScreen(moelList: model.media);
  }
}
