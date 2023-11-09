import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tv_service_test_task/core/presentation/routes/app_router.gr.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_colors.dart';
import 'package:tv_service_test_task/features/home/presentation/main_page.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          AppColors.purple,
          AppColors.blue,
        ],
      ),
      childWidget: SizedBox(
        height: 250,
        child: Assets.pngs.appLogo.image(),
      ),
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 500),
      onAnimationEnd: () => AutoRouter.of(context).replace(
        const MainRoute(),
      ),
      nextScreen: const MainPage(),
    );
  }
}
