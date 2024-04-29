part of 'register_screen_imports.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics:const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Image.asset(
                MyAssets.assetsImagesSplashLogo,
                height: 50.h,
                width: 150.w,
              ),
              SizedBox(
                height: 100.h,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  //  borderRadius: BorderRadius.all(Radius.circular(36))

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: MyColors.primaryColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: MyTextFormField(
                          obscureText: false,
                          controller: emailController,
                          prefixIcon: Icons.email_outlined,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: MyTextFormField(
                          obscureText: true,
                          prefixIcon: Icons.lock,
                          controller: passwordController,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: false,
                              onChanged: (val) {},
                              title: const Text('Remember me'),
                            ),
                          ),
                          const Text("Forgot Password?"),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      PrimaryButton(
                        onPressed: () => AutoRouter.of(context)
                            .push(const LandingScreenRoute()),
                        text: 'Login',
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      // RichText(
                      //   text: const TextSpan(
                      //     text: 'Already have an account? ',
                      //     style: TextStyle(color: MyColors.primaryColor),
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //         text: 'Login',
                      //         style: TextStyle(fontWeight: FontWeight.w700),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}