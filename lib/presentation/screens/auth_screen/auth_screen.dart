part of 'auth_screen_imports.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.6,
              image: AssetImage(MyAssets.assetsImagesAuthBg),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    MyAssets.assetsImagesSplashLogo,
                    height: 50.h,
                    width: 150.w,
                  ),
                ),
                const Spacer(),
                Text(
                  "Explore world\nBiggest app to explore.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: MyColors.whiteColor,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700),
                ),
                PrimaryButton(
                    text: "Login",
                    onPressed: () =>
                        AutoRouter.of(context).push(const LoginScreenRoute())),
                SizedBox(
                  height: 12.h,
                ),
                MyOutlinedButton(
                    text: "Register",
                    onPressed: () => AutoRouter.of(context)
                        .push(const RegisterScreenRoute())),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
