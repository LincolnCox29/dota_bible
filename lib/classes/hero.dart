enum AttackType{ melee, range }
enum PrimaryAttr{ agi, int, str, all}

PrimaryAttr? primaryAttrStrToEnum(String str){
  switch(str){
    case 'str': return PrimaryAttr.str;
    case 'agi': return PrimaryAttr.agi;
    case 'int': return PrimaryAttr.int;
    case 'all': return PrimaryAttr.all;
    default: return null;
  }
}

DotaHero mapToHero(Map<String, dynamic> map)
  => DotaHero(
    imgUrl: map['img'], 
    baseMana: map['base_mana'], 
    primaryAttr: primaryAttrStrToEnum(map['primary_attr']),
    attackType: map['attack_type'] == 'Melee' ? AttackType.melee : AttackType.range,
    baseHealth: map['base_health'], 
    baseHealthRegen: map['base_health_regen'].toDouble(), 
    baseManaRegen: map['base_mana_regen'].toDouble(),
    baseArmor: map['base_armor'], 
    baseMr: map['base_mr'], 
    baseAttackMin: map['base_attack_min'],
    baseAttackMax: map['base_attack_max'], 
    baseStr: map['base_str'], 
    baseAgi: map['base_agi'], 
    baseInt: map['base_int'], 
    strGain: map['str_gain'].toDouble(), 
    intGain: map['int_gain'].toDouble(), 
    agiGain: map['agi_gain'].toDouble(), 
    baseAttackTime: map['base_attack_time'], 
    moveSpeed: map['move_speed'],
    attackRange: map['attack_range'], 
    nightVision: map['night_vision'], 
    dayVision: map['day_vision'], 
    localizedName: map['localized_name'], 
    id: map['id'],
  );

class DotaHero {

  final int id;

  final String imgUrl; 

  final PrimaryAttr? primaryAttr;

  final AttackType attackType;

  final int baseHealth;
  final double baseHealthRegen;

  final int baseMana;
  final double baseManaRegen;

  final int baseArmor;
  final int baseMr;

  final int baseAttackMin;
  final int baseAttackMax;

  final int baseStr;
  final int baseAgi;
  final int baseInt;

  final double strGain;
  final double agiGain; 
  final double intGain;

  final int baseAttackTime;
  final int attackRange;
  final int moveSpeed;

  final int nightVision;
  final int dayVision;

  final String localizedName;

  const DotaHero({
    required this.id,
    required this.imgUrl, 
    required this.primaryAttr, 
    required this.attackType, 
    required this.baseHealth, 
    required this.baseHealthRegen, 
    required this.baseMana, 
    required this.baseManaRegen, 
    required this.baseArmor, 
    required this.baseMr, 
    required this.baseAttackMin, 
    required this.baseAttackMax, 
    required this.baseStr, 
    required this.baseAgi, 
    required this.baseInt, 
    required this.strGain, 
    required this.agiGain, 
    required this.intGain,
    required this.baseAttackTime, 
    required this.attackRange, 
    required this.moveSpeed, 
    required this.nightVision, 
    required this.dayVision, 
    required this.localizedName,
  });

  int get calculHeroHp => baseHealth + (baseStr * 22);

  double get calculHeroHpRegen => baseHealthRegen + (baseStr * 0.1);

  int get calculHeroMp => baseMana + (baseInt * 12);

  double get calculHeroMpRegen => baseManaRegen + (baseInt * 0.05);

  double get calculHeroArmor => baseArmor + (baseAgi / 6);

}