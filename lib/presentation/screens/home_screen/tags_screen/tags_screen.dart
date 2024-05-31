part of 'tags_screen_imports.dart';

@RoutePage()
class TagsScreen extends StatefulWidget {
  const TagsScreen({super.key});

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  @override
  void initState() {
    TagsRepo().getAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text("Tags"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                color: MyColors.primaryColor,
                thickness: 1,
              );
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${index + 1}"),
                title: const Text("Add Tags"),
                trailing: SizedBox(
                  width: 100.h,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FeatherIcons.edit2)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FeatherIcons.trash2))
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
