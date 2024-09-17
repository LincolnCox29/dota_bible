import 'package:dota_bible/classes/ability.dart';
import 'package:dota_bible/classes/abilityAttribute.dart';
import 'package:dota_bible/classes/hero.dart';
import 'package:dota_bible/dataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dota_bible/NullableImage.dart';
part 'functions.dart';

class HeroPage extends StatefulWidget {
  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  late Map<String, dynamic> abilities;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Map<String, dynamic> heroMap = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    abilities = Provider.of<DataProvider>(context).getHeroAbilitiesById(heroMap['id']);
  }

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> heroMap = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final DotaHero hero = mapToHero(heroMap);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          hero.localizedName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                        offset: const Offset(8, 8),
                        blurRadius: 10,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: NullableImage(
                      imageUrl: '${Provider.of<DataProvider>(context).steamCdnUrl}${hero.imgUrl}',
                    ),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AttributeStatsWidget(
                      attribute: 'Strength',
                      base: hero.baseStr,
                      gain: hero.strGain,
                    ),
                    AttributeStatsWidget(
                      attribute: 'Agility',
                      base: hero.baseAgi,
                      gain: hero.agiGain,
                    ),
                    AttributeStatsWidget(
                      attribute: 'Intelligence',
                      base: hero.baseInt,
                      gain: hero.intGain,
                    ),
                  ],
                ),
              ),
              BarWidget(
                value: Text(
                  '${hero.calculHeroHp}\n'
                  '${hero.calculHeroHpRegen.toStringAsFixed(1)}'
                ),
                gradientColors: const [Color.fromARGB(255, 12, 90, 15), Colors.green],
              ),
              BarWidget(
                value: Text(
                  '${hero.calculHeroMp.toString()}\n' 
                  '${hero.calculHeroMpRegen.toStringAsFixed(1)}'
                ),
                gradientColors: const [Color.fromARGB(255, 12, 15, 90), Colors.blue],
              ),
              const LabeleContainer(
                text: 'Stats'
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(225, 27, 38, 44),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                      offset: const Offset(10, 10),
                      blurRadius: 10,
                      spreadRadius: 10,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(225, 15, 76, 117),
                  ),
                ),
                child: Column(
                  children: [
                    StatWidget(
                      text: 'Armor: ${hero.calculHeroArmor.toStringAsFixed(1)}',
                      icon: 'assets/img/icons/Armor_icon.png',
                    ),
                    StatWidget(
                      text: 'Magic Resist: ${hero.baseMr}',
                      icon: 'assets/img/icons/MagResist_icon.png',
                    ),
                    StatWidget(
                      text: 'Move Speed: ${hero.moveSpeed}',
                      icon: 'assets/img/icons/MS_icon.png',
                    ),
                    StatWidget(
                      text: 'Attack Speed: ${hero.baseAttackTime}',
                      icon: 'assets/img/icons/AttackSpeed_icon.png',
                    ),
                    StatWidget(
                      text: 'Attack Range: ${hero.attackRange}',
                      icon: 'assets/img/icons/AttackRange_icon.png',
                    ),
                  ],
                ),
              ),
              const LabeleContainer(
                text: 'Spells'
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: abilities.entries.length,
                itemBuilder: (context, index) {
                  final Map<String, dynamic> abilityMap = abilities.entries.elementAt(index).value;
                  final Ability ability = mapToAbility(abilityMap);
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                        ),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.only(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        title: Text(
                          ability.dname ?? 'No Ability Name',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        leading: NullableImage(
                          imageUrl: '${Provider.of<DataProvider>(context).steamCdnUrl}${ability.img}'
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: const Color.fromARGB(225, 27, 38, 44),
                                content: SizedBox(
                                  width: 300,
                                  height: 600,
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          NullableImage(
                                            imageUrl: '${Provider.of<DataProvider>(context).steamCdnUrl}${ability.img}'
                                          ),
                                          Text(
                                            ability.dname ?? 'No Ability Name',
                                            style: const TextStyle(
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black,
                                                  offset: Offset(1, 1),
                                                  blurRadius: 2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const LabeleContainer(
                                            text: 'Description'
                                          ),
                                          Text(ability.desc ?? 'No Description'),
                                          const LabeleContainer(
                                            text: 'Stats'
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              'Damage Type: ${ability.dmgType}',
                                            ),
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            physics: const NeverScrollableScrollPhysics(),
                                            itemCount: ability.attrib.length,
                                            itemBuilder: (context, index) {
                                              final AbilityAttribute attrib = mapToAbilityAttribute(ability.attrib[index]);
                                              return Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text(attrib.toString()),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    )
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
