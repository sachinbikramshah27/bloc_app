part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: "/", initial: true),
        AutoRoute(page: OnBoardRoute.page),
        AutoRoute(page: AuthScreenRoute.page),
        AutoRoute(page: LoginScreenRoute.page),
        AutoRoute(page: RegisterScreenRoute.page),
        AutoRoute(page: RegisterScreenRoute.page),
        AutoRoute(page: LandingScreenRoute.page),
        AutoRoute(page: HomeScreenHelperRoute.page),
        AutoRoute(page: ProfileScreenRoute.page),
        AutoRoute(page: TagsScreenRoute.page),
        AutoRoute(page: AddPostsScreenRoute.page),
        AutoRoute(page: CategoriesScreenRoute.page),
        AutoRoute(page: LandingSceenDetailsRoute.page),

      ];
}
