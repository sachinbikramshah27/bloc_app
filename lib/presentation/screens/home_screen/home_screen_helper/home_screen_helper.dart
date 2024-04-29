part of 'home_screen_helper_imports.dart';

@RoutePage()
class HomeScreenHelper extends StatefulWidget {
  const HomeScreenHelper({super.key});

  @override
  State<HomeScreenHelper> createState() => _HomeScreenHelperState();
}

class _HomeScreenHelperState extends State<HomeScreenHelper> {
  List<TabItem> items = [
    const TabItem(
      icon: FeatherIcons.home,
      // title: 'Home',
    ),
    const TabItem(
      icon: FeatherIcons.tag,
      //  title: 'Shop',
    ),
    const TabItem(
      icon: FeatherIcons.plus,
      // title: 'Wishlist',
    ),
    const TabItem(
      icon: FeatherIcons.hash,
      // title: 'Cart',
    ),
    const TabItem(
      icon: Icons.account_box,
      // title: 'profile',
    ),
  ];
  int visit = 0;

  List<Widget> pages = [
    const LandingScreen(),
    const CategoriesScreen(),
    const AddPostsScreen(),
    const TagsScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: MyColors.whiteColor,
        color: MyColors.primaryColor,
        colorSelected: MyColors.primaryColor,
        indexSelected: visit,
        // styleIconFooter: StyleIconFooter.dot,
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
