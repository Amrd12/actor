import 'package:actor/core/helpers/color/my_colors.dart';
import 'package:actor/core/widgets/custom_img.dart';
import 'package:actor/feature/people/data/model/person_model.dart';
import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  const PersonWidget({
    super.key,
    required this.model,
  });

  final PersonModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: GridTile(
        child: CustomImg(model.image),
        footer: Container(
          color: MyColors.myYellow.withOpacity(.8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  model.name,
                  style: TextStyle(color: MyColors.myWhite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
