import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImg extends StatelessWidget {
  const CustomImg(
    this.url, {
    super.key,
    this.boxDecoration,
    this.padding,
    this.width,
    this.height,
  });
  final String url;
  final BoxDecoration? boxDecoration;
  final EdgeInsetsGeometry? padding;
  final double? width, height;
  
  String get _imgurl => "https://image.tmdb.org/t/p/w500/$url";


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
      padding: padding,
      width: width,
      height: height,
      child: CachedNetworkImage(
        imageUrl: _imgurl,
        fit: BoxFit.cover,
      ),
    );
  }
}
