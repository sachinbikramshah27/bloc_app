part of 'categories_screen_imports.dart';

@RoutePage()
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title:const  Text("Categories"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus))],
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
                title: const Text("Add Categories"),
                trailing: SizedBox(
                  width: 100.h,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(FeatherIcons.edit2)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(FeatherIcons.trash2))
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
