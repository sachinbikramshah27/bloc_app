part of 'router_imports.dart';
 @AutoRouterConfig(replaceInRouteName: 'Route')

class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const  RouteType.adaptive();

  @override
  List<AutoRoute> get routes =>[
    AutoRoute(page: SplashRoute.page, path: "/", initial: true),
     AutoRoute(page: OnBoardRoute.page),
       AutoRoute(page: AuthScreenRoute.page),
       AutoRoute(page: LoginScreenRoute.page),
       AutoRoute(page: RegisterScreenRoute.page),

  ];
}
