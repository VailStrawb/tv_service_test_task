import 'package:flutter/material.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

class MenuLine extends StatelessWidget {
  const MenuLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.svgs.searchIcon.svg(
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 28),
        Assets.svgs.homeIcon.svg(
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 28),
        Assets.svgs.diskIcon.svg(
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 28),
        Assets.svgs.tvIcon.svg(
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 28),
        Assets.svgs.searchIcon.svg(
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 28),
        Assets.svgs.heartIcon.svg(
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 28),
        Assets.svgs.humanIcon.svg(
          width: 34,
          height: 34,
        ),
        const SizedBox(height: 60),
        Assets.svgs.upArrowIcon.svg(
          width: 34,
          height: 34,
        ),
      ],
    );
  }
}
