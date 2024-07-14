import 'package:auto_route/auto_route.dart';
// import 'package:coffee/routes/app_router.gr.dart';
// import 'package:coffee/routes/app_router.gr.dart';
import 'package:coffee/routes/routes_name.dart';
//import 'package:coffee/screens/login_screen.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page ,path: RoutesName.login,initial: true)
  ];
}
