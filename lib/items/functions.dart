part of 'items.dart';

class ItemListView extends StatelessWidget {
  final List<dynamic> items;

  const ItemListView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          dynamic item = items[index];
          String link = 'https://cdn.cloudflare.steamstatic.com/${item['img']}';
          dynamic args = item;
          return ListTile(
            contentPadding: const EdgeInsets.all(5),
            leading: Image.network(
              link,
              fit: BoxFit.contain,
              width: getScreenWidth(context) * 0.2,
              height: getScreenHeight(context) * 0.5,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (ItemPage()),
                      settings: RouteSettings(arguments: args)));
            },
          );
        });
  }
}

AppBar itemAppBar(context, String type) {
  return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      title: Row(children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child:
              Text('$type items', style: Theme.of(context).textTheme.bodyLarge),
        ),
      ]));
}

double getScreenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

double getScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;
