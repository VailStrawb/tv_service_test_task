import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_colors.dart';
import 'package:tv_service_test_task/features/home/presentation/film_card.dart';
import 'package:tv_service_test_task/features/home/presentation/john_wick_preview.dart';
import 'package:tv_service_test_task/features/home/presentation/menu_line.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 64, top: 40),
                  child: Assets.svgs.appLogo.svg(
                    width: 144,
                    height: 50,
                  ),
                ),
              ),
              const SizedBox(height: 93),
              const Padding(
                padding: EdgeInsets.only(left: 55, top: 17),
                child: MenuLine(),
              ),
            ],
          ),
          Flexible(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width >= 1500
                              ? 290
                              : 90,
                        ),
                        child: const JohnWickPreview(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 95),
                Padding(
                  padding: const EdgeInsets.only(left: 171),
                  child: SizedBox(
                    height: 700,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FilmCard(
                          text: "Kva",
                          image: Assets.pngs.blueBag.path,
                          rate: 5.6,
                        ),
                        const SizedBox(width: 44),
                        FilmCard(
                          text: "Kva",
                          image: Assets.pngs.blueBag.path,
                          rate: 5.6,
                        ),
                        const SizedBox(width: 44),
                        FilmCard(
                          text: "Kva",
                          image: Assets.pngs.blueBag.path,
                          rate: 5.6,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
