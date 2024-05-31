part of 'add_posts_screen_imports.dart';

@RoutePage()
class AddPostsScreen extends StatefulWidget {
  const AddPostsScreen({super.key});

  @override
  State<AddPostsScreen> createState() => _AddPostsScreenState();
}

class _AddPostsScreenState extends State<AddPostsScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController slugController = TextEditingController();
 final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Add Post"),
        centerTitle: true,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.check))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.network(
                      'https://thealmanian.com/wp-content/uploads/2019/01/product_image_thumbnail_placeholder.png'),
                  Positioned(
                      bottom: 20,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(FeatherIcons.camera)))
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              MyTextFormField(
                hintText: 'Title',
                obscureText: false,
                //   prefixIcon: FeatherIcons.activity,
                controller: titleController,
              ),
              SizedBox(
                height: 10.h,
              ),
              MyTextFormField(
                obscureText: false,
                hintText: 'Slugs',
                //prefixIcon: FeatherIcons.activity,
                controller: slugController,
              ),
              SizedBox(
                height: 10.h,
              ),
              QuillToolbar.simple(
                configurations: QuillSimpleToolbarConfigurations(
                  controller: _controller,
                  // sharedConfigurations: const QuillSharedConfigurations(
                  //   locale: Locale('en'),
                  // ),
                ),
              ),
              SizedBox(
                height: 500.h,
                child: QuillEditor.basic(
                  configurations: QuillEditorConfigurations(
                    controller: _controller,
                    readOnly: false,
                    // sharedConfigurations: const QuillSharedConfigurations(
                    //   locale: Locale('en'),
                    // ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
