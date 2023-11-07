import 'package:flutter/material.dart';
import 'package:tv_service_test_task/core/presentation/routes/app_router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Manrope',
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
