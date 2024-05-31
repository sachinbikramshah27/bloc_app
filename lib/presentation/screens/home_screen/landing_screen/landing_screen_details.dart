part of 'landing_screen_imports.dart';

@RoutePage()
class LandingSceenDetails extends StatefulWidget {
  const LandingSceenDetails({super.key});

  @override
  State<LandingSceenDetails> createState() => _LandingSceenDetailsState();
}

class _LandingSceenDetailsState extends State<LandingSceenDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Title is here,and there and chills",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                "Title Description is here",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(FeatherIcons.eye),
                      SizedBox(
                        width: 6.w,
                      ),
                      const Text("69 views")
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(FeatherIcons.thumbsUp)),
                          const Text("0")
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(FeatherIcons.thumbsDown)),
                          const Text("0")
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                  "Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills")
            ],
          ),
        ));
  }
}
