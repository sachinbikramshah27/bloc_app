part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToOnboard();
    super.initState();
  }

  moveToOnboard() async {
    await Future.delayed(const Duration(seconds: 5), () {
       AutoRouter.of(context).push( const OnBoardRoute());
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: Center(
            child: FadedScaleAnimation(
         
          child: Image.asset(
            MyAssets.assetsImagesSplashLogo,
            height: 50.h,
            width: 150.w,
          ),
        )));
  }
}
