part of 'landing_screen_imports.dart';

@RoutePage()
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Container(
                height: 250.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(MyAssets.assetsImagesOnboard1),
                        fit: BoxFit.cover),
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.circular(20.r)),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Posts ",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  Text(
                    " See All",
                    style: TextStyle(fontSize: 16.sp),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20.h,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        AutoRouter.of(context)
                            .push(const LandingSceenDetailsRoute());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        MyAssets.assetsImagesOnboard1),
                                    fit: BoxFit.cover),
                                color: MyColors.primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(width: 8.h),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Here is Title of the  post that will be fetched from the api",
                                  maxLines: 2,
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(FeatherIcons.clock),
                                    SizedBox(
                                      width: 5.h,
                                    ),
                                    const Text("6 months ago"),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("50 views"),
                                    Icon(FeatherIcons.bookmark),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
