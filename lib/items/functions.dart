part of 'items.dart';

Widget itemListView(final List<Item> items, type){
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
    ),
    itemCount: items.length,
    itemBuilder: (context, index){
    Item item = items[index];
      String link = item.icon;
      Item args = item;
      return ListTile(
        contentPadding: const EdgeInsets.all(5),
        leading: Image.network(link),
        onTap: () {
          if(type == 'base'){
            Navigator.push(context, MaterialPageRoute(builder: (context) => (item_page()),
            settings: RouteSettings(arguments: args)));
          }
          else if(type == 'difficult'){
            Navigator.push(context, MaterialPageRoute(builder: (context) => (item_page()),
            settings: RouteSettings(arguments: args)));
          }
        },
      );
    }
  );
}

AppBar itemAppBar(context, type){
  return AppBar(
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    title: Row(
      children : [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child : Text(
            type + ' items',
            style: Theme.of(context).textTheme.bodyLarge
          ),
        ),
      ]
    )
  );
}