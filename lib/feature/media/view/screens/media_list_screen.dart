import 'package:actor/core/helpers/color/my_colors.dart';
import 'package:actor/core/widgets/custom_img.dart';
import 'package:actor/feature/media/data/model/media_model.dart';
import 'package:flutter/material.dart';

class MediaListScreen extends StatefulWidget {
  const MediaListScreen({super.key, required this.moelList, this.physics});
  final List<MediaModel> moelList;
  final ScrollPhysics? physics;
  @override
  State<MediaListScreen> createState() => _MediaListScreenState();
}

class _MediaListScreenState extends State<MediaListScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: widget.physics,
      itemCount: widget.moelList.length,
      itemBuilder: (context, index) {
        final MediaModel model = widget.moelList[index];
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: GridTile(
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
            child: CustomImg(model.image),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
    );
  }
}
