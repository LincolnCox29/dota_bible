part of 'heroesAttribute.dart';
/*
The widget creates a "List View"
with widgets that have a link to the hero's page
*/
Widget heroListView(final Map<String,List> attribute){
  return ListView.builder(
    itemCount: attribute.length,
    itemBuilder: (context, index){
      String name = attribute.keys.toList()[index];
      String link = attribute.values.toList()[index][0];
      Heroe hero = attribute.values.toList()[index][1];
      Map<String,dynamic> args = {'name' : name, 'link' : link, 'hero' : hero };
      return ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        title: Text(
          name,
          style: Theme.of(context).textTheme.bodyLarge
        ),
        leading: Image.asset(link),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => heroPage(),
          settings: RouteSettings(arguments: args)));
        },
      );
    }
  );
}
/*
The widget returns the appbar
for the attribute page
*/
PreferredSizeWidget heroAppBar(context, String attribute){
  return AppBar(
    leading: BackButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Main',)));
      },
    ),
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    title: Text(
      'Heroes',
      style: Theme.of(context).textTheme.bodyLarge, 
    ),
    actions: <Widget>[
      IconButton(
        icon: Image.asset('assets/img/attribute/Strength_attribute_symbol.png'),
        onPressed: () {
          if(attribute != 'strength'){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_strength()));
          }
        }
      ),
      IconButton(
        icon: Image.asset('assets/img/attribute/Agility_attribute_symbol.png'),
        onPressed: () {
          if(attribute != 'agility'){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_agility()));
          }
        }
      ),
      IconButton(
        icon: Image.asset('assets/img/attribute/Intelligence_attribute_symbol.png'),
        onPressed: () {
          if(attribute != 'intelligence'){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_intelligence()));
          }
        }
      ),
      IconButton(
        icon: Image.asset('assets/img/attribute/Universal_attribute_symbol.png'),
        onPressed: () {
          if(attribute != 'universal'){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_universal()));
          }
        }
      ),
    ],
  );
}