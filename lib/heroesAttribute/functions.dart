part of 'heroesAttribute.dart';

Widget heroListView(final List<dynamic> heroes){
  return ListView.builder(
    itemCount: heroes.length,
    itemBuilder: (context, index){
      return ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        title: Text(
          heroes[index]['localized_name'],
          style: Theme.of(context).textTheme.bodyLarge
        ),
        leading: Image.asset(
          'assets/img/heroes/${heroes[index]['localized_name']}.png',
          width: getScreenWidth(context) * 0.3 ,
          height: getScreenHeight(context) * 0.3
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HeroPage(),
          settings: RouteSettings(arguments: heroes[index])));
        },
      );
    }
  );
}

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