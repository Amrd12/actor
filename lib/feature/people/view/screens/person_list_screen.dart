import 'package:actor/core/widgets/custom_img.dart';
import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/view/widgets/person_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonListScreen extends StatefulWidget {
  const PersonListScreen({super.key});

  @override
  State<PersonListScreen> createState() => _PersonListScreenState();
}

class _PersonListScreenState extends State<PersonListScreen> {
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
          return GridView.builder(
            itemCount: personList.length,
            itemBuilder: (context, index) {
              final PersonModel model = personList[index];
              return PersonWidget(
                model: model,
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
            ),
          );
        } else if (state is ErrorPersonState) {
          return Text("Error ${state.error}");
        }
        return Text(" null");
      },
    );
  }
}
