import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:actor/feature/people/view/widgets/person_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonListWidget extends StatefulWidget {
  const PersonListWidget({
    super.key,
    required this.personList,
  });

  final List<PersonModel> personList;

  @override
  State<PersonListWidget> createState() => _PersonListWidgetState();
}

class _PersonListWidgetState extends State<PersonListWidget> {
  late ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
    _controller.addListener(_lis);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _controller,
      itemCount: widget.personList.length,
      itemBuilder: (context, index) {
        final PersonModel model = widget.personList[index];
        return PersonWidget(
          model: model,
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
    );
  }

  void _lis() async {
    double pix = _controller.position.pixels;
    if (_controller.position.pixels >= _controller.position.maxScrollExtent) {
      await BlocProvider.of<PersonCubit>(context).nextpage();
      _controller.jumpTo(pix);
    }
  }
}
