import 'package:flutter/material.dart';
import '../Objects/heroes.dart';
part 'functions.dart';

class heroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    Heroe hero = args['hero'] as Heroe;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          args['name'].toString(),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: ListView(
        children: [Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(225,15,76,117).withOpacity(.1),
                      offset: const Offset(8, 8),
                      blurRadius: 10,
                      spreadRadius: 10
                    )
                  ]
                ),
                child : Image.asset(
                  args['link'].toString(),
                  scale: 1.2
                ),
              ),
            ),
            Padding(
              padding : const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  attributeStats(
                    'assets/img/attribute/Strength_attribute_symbol.png', 
                    Text(hero.strength)
                  ),
                  attributeStats(
                    'assets/img/attribute/Agility_attribute_symbol.png', 
                    Text(hero.agility)
                  ),
                  attributeStats(
                    'assets/img/attribute/Intelligence_attribute_symbol.png', 
                    Text(hero.intelligence)
                  )
                ],
              ),
            ),
            bar(
              Text('${hero.hp}\n${hero.hpRegeneration}'),
              [const Color.fromARGB(255, 12, 90, 15),Colors.green]
            ),
            bar(
              Text('${hero.mana}\n${hero.manaRegeneration}'), 
              [const Color.fromARGB(255, 12, 15, 90),Colors.blue]
            ),
            labeleContainer(context, 'Stats'),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                color: const Color.fromARGB(225,27,38,44),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(225,15,76,117).withOpacity(.1),
                    offset: const Offset(10, 10),
                    blurRadius: 10,
                    spreadRadius: 10
                  )
                ],
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(225,15,76,117)
                )
              ),
              child:  Column(
                children: [
                  stat(
                    'Armor (EHP): ${hero.armorEHP}',
                    'assets/img/icons/Armor_icon.png'
                  ),
                  stat(
                    'Magic Resist: ${hero.magicResist}',
                    'assets/img/icons/MagResist_icon.png'
                  ),
                  stat(
                    'Move Speed: ${hero.moveSpeed}',
                    'assets/img/icons/MS_icon.png'
                  ),
                  stat(
                    'Attack Speed: ${hero.attackSpeed}',
                    'assets/img/icons/AttackSpeed_icon.png'
                  ),
                  stat(
                    'Attack Range: ${hero.attackRange}',
                    'assets/img/icons/AttackRange_icon.png'
                  )
                ],
              ),
            ),
            labeleContainer(context, 'Spells'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hero.spals.length,
              itemBuilder: (context, index){
                Skill thisSpall = hero.spals[index];
                return DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(225,15,76,117).withOpacity(.1)
                    )
                  ),
                  child : ListTile(
                    contentPadding: const EdgeInsets.only(
                      left: 5,
                      top: 5,
                      bottom: 5
                    ),
                    title: Text(
                      thisSpall.name,
                      style: Theme.of(context).textTheme.bodyLarge
                    ),
                    leading: Image.network(thisSpall.icon),
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog( 
                            backgroundColor: const Color.fromARGB(225,27,38,44),
                            content: SizedBox(
                              width: 300,
                              height: 600,
                              child : ListView(
                                shrinkWrap: true,
                                children: <Widget>[
                                  Stack(
                                    children : <Widget>[
                                      Image.network(thisSpall.icon),
                                      Text(
                                        thisSpall.name,
                                        style: const TextStyle(
                                          shadows: [
                                            Shadow(
                                              color: Colors.black,
                                              offset: Offset(1, 1),
                                              blurRadius: 2
                                            )
                                          ]
                                        ),
                                      )
                                    ]
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      labeleContainer(context, 'Description'),
                                      Text(
                                        thisSpall.description
                                      ),
                                      labeleContainer(context, 'Stats'),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          'Damage Type : ${thisSpall.damageType}'
                                        )
                                      ),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: thisSpall.fields.length,
                                        itemBuilder: (context, index){
                                          String fild = thisSpall.fields[index];
                                          return Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child : Text(fild)
                                          );
                                        }
                                      )
                                    ],
                                  )
                                ]
                              )
                            )
                          );
                        }
                      );
                    },
                  )
                );
              }
            )
          ],
        )],
      )
    );
  }
}