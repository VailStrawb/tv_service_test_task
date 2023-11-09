import 'package:flutter/material.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_button.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_colors.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_fonts.dart';
import 'package:tv_service_test_task/features/home/domain/models/film_model.dart';

class NewFilmPreview extends StatelessWidget {
  const NewFilmPreview({
    super.key,
    required this.newFilm,
  });

  final FilmModel newFilm;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 450,
          child: ShaderMask(
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
            child: Image.asset(
              newFilm.filmImage,
              fit: BoxFit.fitHeight,
              width: MediaQuery.of(context).size.width >= 1500 ? 895 : 430,
              height: MediaQuery.of(context).size.height >= 1000 ? 695 : 470,
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              newFilm.filmNameImage,
              width: 406,
              height: 228,
            ),
            const SizedBox(height: 36),
            Text(
              newFilm.filmDescription,
              textAlign: TextAlign.center,
              style: AppFonts.normal30w500,
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
                  color: Color.fromARGB(35, 159, 159, 159),
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
      ],
    );
  }
}
