import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorCachedNetworkImage extends StatelessWidget {
  const DoctorCachedNetworkImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThkSIs1WzlG_7XJLchwZi46zHj2tyTiN8-f01MPqoFAQNA9hOInk9A0Hln8Z29ed0r1YM&usqp=CAU",
      imageBuilder: (context, imageProvider) => Container(
        width: 110.w,
        height: 110.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Shimmer.fromColors(
          baseColor: const Color(0xFFC2C2C2),
          highlightColor: Colors.white,
          child: Container(
            width: 110.w,
            height: 110.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
