part of 'tags_screen_imports.dart';

@RoutePage()
class TagsScreen extends StatefulWidget {
  const TagsScreen({super.key});

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: Text("Tags"),
        actions: [IconButton(onPressed: () {}, icon: Icon(FeatherIcons.plus))],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: MyColors.primaryColor,
                thickness: 1,
              );
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${index + 1}"),
                title: Text("Add Tags"),
                trailing: SizedBox(
                  width: 100.h,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(FeatherIcons.edit2)),
                      IconButton(
                          onPressed: () {}, icon: Icon(FeatherIcons.trash2))
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
