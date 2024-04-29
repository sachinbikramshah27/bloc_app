part of 'add_posts_screen_imports.dart';

@RoutePage()
class AddPostsScreen extends StatefulWidget {
  const AddPostsScreen({super.key});

  @override
  State<AddPostsScreen> createState() => _AddPostsScreenState();
}

class _AddPostsScreenState extends State<AddPostsScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: Text(" Add Post Screen"),
      ),
    );
  }
}