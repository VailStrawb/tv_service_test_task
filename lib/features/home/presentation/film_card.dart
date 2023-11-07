import 'package:flutter/material.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_colors.dart';

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
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              image,
              width: 398,
              height: 597,
            ),
            SizedBox(
              width: 75,
              height: 48,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      AppColors.purple,
                      AppColors.blue,
                    ],
                  ),
                ),
                child: Text(
                  rate.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
            )
          ],
        ),
        Text(text),
      ],
    );
  }
}
