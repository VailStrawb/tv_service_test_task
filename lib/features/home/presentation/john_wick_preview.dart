import 'package:flutter/material.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_button.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_colors.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

class JohnWickPreview extends StatelessWidget {
  const JohnWickPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.pngs.johnWick.image(
              width: 406,
              height: 228,
            ),
            const SizedBox(height: 36),
            Assets.pngs.johnWickText.image(
              width: 678,
              height: 135,
            ),
            const SizedBox(height: 36),
            const Row(
              children: [
                AppButton(
                  text: "Смотреть",
                  color: Colors.purple,
                  gradient: LinearGradient(
                    colors: <Color>[
                      AppColors.purple,
                      AppColors.blue,
                    ],
                  ),
                ),
                SizedBox(width: 24),
                AppButton(
                  text: "О фильме",
                  color: Color.fromARGB(81, 159, 159, 159),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(0, 76, 175, 79),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(width: 6),
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [
                Color.fromARGB(182, 0, 0, 0),
                Color.fromARGB(0, 0, 0, 0),
                Color.fromARGB(197, 0, 0, 0),
              ],
            ).createShader(bounds);
          },
          blendMode: BlendMode.darken,
          child: Assets.pngs.johnWickPhoto.image(
            fit: BoxFit.fitHeight,
            width: MediaQuery.of(context).size.width >= 1500 ? 895 : 430,
            height: MediaQuery.of(context).size.height >= 1000 ? 695 : 470,
          ),
        ),
      ],
    );
  }
}
