part of 'profile_screen_imports.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        //title: Text(" Profile Screen"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                onPressed: () {}, icon: const Icon(FeatherIcons.logOut)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(MyAssets.assetsImagesOnboard1),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Username",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                  ),
                  const Text("email@email.com"),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      children: [
                        const Text(
                          "Here is the description of the user, where there can be anything. Anything that will describe the user and his posts will be shown below.",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [Text("0"), Text("Posts")],
                            ),
                            Column(
                              children: [Text("0"), Text("Posts")],
                            ),
                            Column(
                              children: [Text("0"), Text("Posts")],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "My Posts",
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 2,
                              childAspectRatio: 0.65),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child:
                                    Image.asset(MyAssets.assetsImagesOnboard1)),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                const Expanded(
                                    child: Text(
                                  "Title is here and it can be long",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(FeatherIcons.moreVertical))
                              ],
                            )
                          ],
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
