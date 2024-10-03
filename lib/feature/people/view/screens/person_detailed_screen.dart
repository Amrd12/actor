import 'dart:developer';

import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:actor/feature/people/data/model/person_detailed_model.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/view/widgets/person_Full_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonDetailedScreen extends StatefulWidget {
  const PersonDetailedScreen({super.key, required this.model});
  final PersonModel model;
  @override
  State<PersonDetailedScreen> createState() => _PersonDetailedScreenState();
}

class _PersonDetailedScreenState extends State<PersonDetailedScreen> {
  late PersonModel model = widget.model;

  @override
  void initState() {
    if (model.runtimeType != PersonDetailedModel) {
      BlocProvider.of<PersonCubit>(context).loadinfo(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PersonCubit, PersonState>(
        builder: (context, state) {
          if (state is SuccessPersonState) {
            log(model.runtimeType.toString());
            model = state.model;
            return PersonFullWidget(
              model: model,
            );
          } else if (state is LoadingPersonState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(
              child: Text("Error nothing"),
            );
          }
        },
      ),
    );
  }
}
