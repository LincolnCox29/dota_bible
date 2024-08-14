Ability mapToAbility(Map<String, dynamic> map)
  => Ability(
    dmgType: map['dmg_type'],
    dname: map['dname'], 
    behavior: map['behavior'], 
    bkbpierce: map['bkbpierce'], 
    dispellable: map['dispellable'], 
    desc: map['desc'], 
    dmg: map['dmg'], 
    attrib: map['attrib'], 
    lore: map['lore'], 
    mc: map['mc'], 
    cd: map['cd'], 
    img: map['img']
  );

class Ability {

  final dynamic dmgType;
  final String? dname;
  final dynamic behavior;
  final dynamic bkbpierce;
  final String? dispellable;
  final String? desc;
  final dynamic dmg;
  final dynamic attrib;
  final String? lore;
  final dynamic mc;
  final dynamic cd;
  final String? img;

  const Ability({
    this.dmgType,
    required this.dname,
    required this.behavior,
    this.bkbpierce,
    this.dispellable,
    this.desc,
    this.dmg,
    required this.attrib,
    this.lore,
    required this.mc,
    required this.cd,
    required this.img
  });
}