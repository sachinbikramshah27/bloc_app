part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Image.asset(
                  MyAssets.assetsImagesSplashLogo,
                  height: 50.h,
                  width: 150.w,
                ),
                SizedBox(
                  height: 60.h,
                ),
                Expanded(
                    child: PageView(
                  controller: pageController,
                  children: const [
                    OnboardCard(
                      imageUrl: MyAssets.assetsImagesOnboard1,
                      onboardText:
                          "Explore the World with us. Explore the Universe with us",
                    ),
                    OnboardCard(
                      imageUrl: MyAssets.assetsImagesOnboard2,
                      onboardText:
                          "Get Started with the world biggest app to explore the world. Explore the World with us. Explore the Universe with us",
                    ),
                    OnboardCard(
                      imageUrl: MyAssets.assetsImagesOnboard3,
                      onboardText:
                          "Started the world biggest app to explore the world.  Explore the Universe with us",
                    )
                  ],
                )),
                SizedBox(
                  height: 60.h,
                ),
                PrimaryButton(text: "Get Started", onPressed: ()=>
                   AutoRouter.of(context).push(const AuthScreenRoute())
                ),
                
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SmoothPageIndicator(
                        effect: WormEffect(
                            dotHeight: 14.0.h,
                            dotWidth: 14.0.w,
                            //dotColor: Colors.grey,
                            activeDotColor: MyColors.primaryColor),
                        controller: pageController,
                        count: 3),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: MyColors.primaryColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
