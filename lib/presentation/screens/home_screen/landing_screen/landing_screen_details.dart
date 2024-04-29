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
          title: Text(
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
                      Icon(FeatherIcons.eye),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text("69 views")
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(FeatherIcons.thumbsUp)),
                          Text("0")
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(FeatherIcons.thumbsDown)),
                          Text("0")
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                  "Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills Title is here,and there and chillsTitle is here,and there and chills")
            ],
          ),
        ));
  }
}
