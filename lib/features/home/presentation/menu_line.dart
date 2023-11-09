import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

class MenuLine extends StatelessWidget {
  const MenuLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _IconBox(imagePath: Assets.svgs.searchIcon.path),
        const SizedBox(height: 28),
        _IconBox(imagePath: Assets.svgs.homeIcon.path),
        const SizedBox(height: 28),
        _IconBox(imagePath: Assets.svgs.diskIcon.path),
        const SizedBox(height: 28),
        _IconBox(imagePath: Assets.svgs.tvIcon.path),
        const SizedBox(height: 28),
        _IconBox(imagePath: Assets.svgs.heartIcon.path),
        const SizedBox(height: 28),
        _IconBox(imagePath: Assets.svgs.humanIcon.path),
        const SizedBox(height: 60),
        _IconBox(imagePath: Assets.svgs.upArrowIcon.path),
      ],
    );
  }
}

class _IconBox extends StatelessWidget {
  const _IconBox({
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      width: 34,
      height: 34,
    );
  }
}
