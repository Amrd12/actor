import 'package:actor/feature/images/cubit/images_cubit.dart';
import 'package:actor/feature/images/data/model/imges_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MediaListScreen extends StatefulWidget {
  const MediaListScreen({super.key, required this.imgs});
  final ImgesModel imgs;
  @override
  State<MediaListScreen> createState() => _MediaListScreenState();
}

class _MediaListScreenState extends State<MediaListScreen> {
  @override
  void initState() {
    if (widget.imgs.isImgesListEmpty) {
      // BlocProvider.of<ImagesCubit>(context)
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
