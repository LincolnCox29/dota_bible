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
        leading: Image.network(
          link,
          fit: BoxFit.contain,
          width: getScreenWidth(context) * 0.2,
          height: getScreenHeight(context) * 0.5,
        ),
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

double getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

Stack mainMenuButton(final String text, final String img, BuildContext context){
  return Stack(
    children : [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: const Color.fromARGB(225,15,76,117)
          ),
          boxShadow:  [
            BoxShadow(
              color: const Color.fromARGB(225,15,76,117).withOpacity(.1),
              offset: const Offset(8, 8),
              blurRadius: 5,
              spreadRadius: 10
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(img),
            fit:  BoxFit.fill
          )
        ),
        width: getScreenWidth(context) * 0.9,
        height: getScreenHeight(context) * 0.15,
      ),
      Padding(
        padding : const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        child : Text(
          text,
          style: const TextStyle(
            fontWeight:FontWeight.w700,
            fontSize: 30,
            shadows: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 3)
              )
            ]
          ),
        )
      )
    ]
  );
}