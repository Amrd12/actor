import 'package:actor/core/widgets/custom_img.dart';
import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/view/widgets/person_list_widget.dart';
import 'package:actor/feature/people/view/widgets/person_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularListScreen extends StatefulWidget {
  const PopularListScreen({super.key});

  @override
  State<PopularListScreen> createState() => _PopularListScreenState();
}

class _PopularListScreenState extends State<PopularListScreen> {
  late List<PersonModel> personList;
  @override
  void initState() {
    BlocProvider.of<PersonCubit>(context).getPopular();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonCubit, PersonState>(
      builder: (context, state) {
        if (state is LoadingPersonState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is PopularSuccessPersonState) {
          personList = state.model;
          return PersonListWidget(personList: personList);
        } else if (state is ErrorPersonState) {
          return Text("Error ${state.error}");
        }
        return const Text(" null");
      },
    );
  }
}
