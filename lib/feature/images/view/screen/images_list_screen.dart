import 'package:actor/core/helpers/color/my_colors.dart';
import 'package:actor/core/widgets/custom_img.dart';
import 'package:actor/feature/images/cubit/images_cubit.dart';
import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesListScreen extends StatefulWidget {
  const ImagesListScreen({super.key, required this.imgs});
  final ImgesModel imgs;

  @override
  State<ImagesListScreen> createState() => _ImagesListScreenState();
}

class _ImagesListScreenState extends State<ImagesListScreen> {
  @override
  void initState() {
    if (widget.imgs.isImgesListEmpty) {
      BlocProvider.of<ImagesCubit>(context).LoadImages(widget.imgs);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesCubit, ImagesState>(
      builder: (context, state) {
        if (state is ImageLoad) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ImageSuccess) {
          return ImageListWidget(imgs: state.mix);
        } else if (state is ImageError) {
          return Center(
            child: Text("Error ${state.error}"),
          );
        } else {
          return const Center(
            child: Text("nothing"),
          );
        }
      },
    );
  }
}

class ImageListWidget extends StatelessWidget {
  const ImageListWidget({
    super.key,
    required this.imgs,
  });

  final ImgesModel imgs;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: imgs.imgesList.length,
      itemBuilder: (context, index) {
        final String img = imgs.imgesList[index];
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: GridTile(
            child: CustomImg(img),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
    );
  }
}
