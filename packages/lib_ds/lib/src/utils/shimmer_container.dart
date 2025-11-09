import 'package:flutter/material.dart';
import 'package:lib_dependencies/lib_dependencies.dart';
import 'package:lib_ds/src/theme/app_color.dart';

class ShimmerContainer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color? baseColor;
  final Color? highlightColor;

  const ShimmerContainer({
    super.key,
    required this.width,
    required this.height,
    this.radius = 0,
    this.baseColor,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
        baseColor: baseColor ?? AppColors.shimmerBase,
        highlightColor: highlightColor ?? AppColors.shimmerHighlight,
        child: Container(
          decoration: BoxDecoration(
            color: baseColor ?? AppColors.shimmerHighlight,
            borderRadius: BorderRadius.circular(radius),
          ),
          width: width,
          height: height,
        ),
      ),
    );
  }
}
