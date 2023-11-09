import 'package:flutter/material.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_colors.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_fonts.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({
    super.key,
    required this.text,
    required this.image,
    required this.rate,
  });

  final String text;
  final String image;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              image,
              width: 398,
              height: 597,
            ),
            if (rate != 0)
              Positioned(
                left: 25,
                top: image == Assets.pngs.blueBag.path ? 36 : 28,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 48,
                    minWidth: 90,
                  ),
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                        colors: <Color>[
                          AppColors.purple,
                          AppColors.blue,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        rate.toStringAsFixed(1),
                        style: AppFonts.filmCardText,
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: AppFonts.filmCardText,
        ),
      ],
    );
  }
}
