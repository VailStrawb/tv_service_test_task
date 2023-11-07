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
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 64, top: 40),
                child: Assets.svgs.appLogo.svg(
                  width: 144,
                  height: 50,
                ),
              ),
              const SizedBox(height: 93),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 55, top: 17),
                    child: MenuLine(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left:
                          MediaQuery.of(context).size.width >= 1500 ? 290 : 220,
                    ),
                    child: const JohnWickPreview(),
                  ),
                ],
              ),
              const SizedBox(height: 95),
            ],
          ),
        ],
      ),
    );
  }
}
