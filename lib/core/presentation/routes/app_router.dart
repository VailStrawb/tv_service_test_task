import 'package:auto_route/auto_route.dart';
import 'package:tv_service_test_task/core/presentation/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
        ),
      ];
}
