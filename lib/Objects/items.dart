// ignore_for_file: non_constant_identifier_names

class Item{
  String name;
  String icon;
  String cost;
  List stats;
  String description;
  List fields;
  String type;
  Item(
    this.name,
    this.icon,
    this.cost,
    this.stats,
    this.description,
    this.fields,
    this.type
  );
}
Item Observer_Ward = Item('Observer Ward','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f6/Observer_Ward_icon.png/revision/latest?cb=20160530171901', '0 ', [], 'Plants an Observer Ward, an invisible watcher that gives ground vision in a 1600 radius to your team. Lasts 6 minutes.Hold Control to give one Observer Ward to an allied hero.', ['Cast Range:  500', 'Vision Radius: 1600', 'Hero Attacks to Destroy: 2', 'Non-Hero Attacks to Destroy: 8', 'Gold Bounty Increase per Minute: 4', 'Experience Increase per Minute: 8', 'Duration: 360'],'base');
Item Blood_Grenade = Item('Blood Grenade','https://static.wikia.nocookie.net/dota2_gamepedia/images/0/03/Blood_Grenade_icon.png/revision/latest?cb=20230421051419', '50 ', ['+50 Health\n'], 'Throws a grenade at the target area. Enemies in the area will take 50 damage on impact, be slowed by 15% and take 15 damage per second.', ['Cast Animation:\xa00.2+0', 'Cast Range: 900', 'Radius:  300', 'Impact Damage: 50', 'Damage per Second: 15', 'Move Speed Slow: 15%', 'Duration: 5'],'base');
Item Clarity = Item('Clarity','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/77/Clarity_icon.png/revision/latest?cb=20160530165109', '50 ', [], 'Grants 6 mana regeneration to the target for 25 seconds.If the unit is attacked by an enemy hero or Roshan, the effect is lost.', ['Cast Animation:\xa0 0+0', 'Cast Range:  250', 'Mana Regen Bonus: 6', 'Duration: 25'],'base');
Item Sentry_Ward = Item('Sentry Ward','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/3e/Sentry_Ward_icon.png/revision/latest?cb=20160530173231', '50 ', [], 'Plants a Sentry Ward, an invisible watcher that grants True Sight, the ability to see invisible enemy units and wards, to any existing allied vision within a  radius.Lasts 7 minutes.Does not grant ground vision.Hold Control to give one Sentry Ward to an allied hero.', ['Cast Range:  500', 'Hero Attacks to Destroy: 2', 'Non-Hero Attacks to Destroy: 8', 'Duration: 420'],'base');
Item Smoke_of_Deceit = Item('Smoke of Deceit','https://static.wikia.nocookie.net/dota2_gamepedia/images/0/04/Smoke_of_Deceit_icon.png/revision/latest?cb=20160530173506', '50 ', [], 'Turns the caster and all allied player-controlled units in a 1200 radius invisible, and grants 15% bonus movement speed for 45 seconds.While the caster is still disguised, any allies that come within 15% range of them will also get the buff applied to them. Each smoke can only be applied once to allies.Attacking, or moving within 1025 range of an enemy hero or tower, will break the invisibility.Disguise grants invisibility that is immune to True Sight.', ['Effect Radius: 1200', 'Secondary Smoke Radius: 300', 'Dispel Radius: 1025', 'Fade Time: 0', 'Simultaneous Downtime: 2', 'Move Speed Bonus: 15%', 'Duration: 45'],'base');
Item Enchanted_Mango = Item('Enchanted Mango','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/70/Enchanted_Mango_icon.png/revision/latest?cb=20160530170213', '65 ', ['+0.4 Health Regeneration\n'], 'Instantly restores 100 mana.', ['Cast Animation:\xa0 0+0', 'Cast Range:  400', 'Pick-up Range Bonus: 150', 'Mana Restored: 100'],'base');
Item Faerie_Fire = Item('Faerie Fire','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/54/Faerie_Fire_icon.png/revision/latest?cb=20160530170344', '65 ', ['+2 Attack Damage\n'], 'Instantly restores 85 health.', ['Cast Animation:\xa0 0+0', 'Health Restored: 85'],'base');
Item Dust_of_Appearance = Item('Dust of Appearance','https://static.wikia.nocookie.net/dota2_gamepedia/images/e/ed/Dust_of_Appearance_icon.png/revision/latest?cb=20160530170133', '80 ', [], 'For 12 seconds, creates an area that reveals invisible and slows heroes by 20% in an 1050 radius where the caster  was standing. Invisible units revealed by dust take 25 damage.The debuff effect on enemies lingers for 8s after leaving the area of effect.', ['Cast Animation:\xa0 0+0', 'Radius:  1050', 'Damage: 25', 'Move Speed Slow: 20%', 'Duration: 12', 'Aura Linger Duration: 8'],'base');
Item Tango = Item('Tango','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/fd/Tango_icon.png/revision/latest?cb=20160530173658', '90 ', [], 'Consumes a target tree to gain 7 health regeneration for 16 seconds. Consuming an Ironwood Tree doubles the heal amount.Comes with 3 charges. Can be used on an allied hero to give them one Tango.', ['Cast Range:  165', 'Health Regen Bonus: 7', 'Duration: 16', 'Shared Tango Duration: 40', 'Duration: 32'],'base');
Item Healing_Salve = Item('Healing Salve','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/36/Healing_Salve_icon.png/revision/latest?cb=20160530170815', '100 ', [], 'Grants 30 health regeneration to the target for 13 seconds.If the unit is attacked by an enemy hero or Roshan, the effect is lost.Heals for half the amount when cast on an ally.', ['Cast Animation:\xa0 0+0', 'Cast Range:  250', 'Health Regen Bonus: 30', 'Self Duration: 13', 'Allied Duration: 6.5'],'base');
Item Town_Portal_Scroll = Item('Town Portal Scroll','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/46/Town_Portal_Scroll_icon.png/revision/latest?cb=20160530173822', '100 ', [], 'After channeling for 3 seconds, teleports you to a target friendly building.Double-click to teleport to your teams base fountain.', ['Cast Range: Global', 'Min Targeting Distance to Building: 70', 'Max Targeting Distance to Building: 800', 'Max Targeting Distance to Outposts: 250', 'First Channel Time: 3', 'First Channel Time to Outposts: 4', 'Second Channel Time Increase: 2', 'Following Channel Time Increase: 0.5', 'Recent Teleport Check Radius: 1150', 'Recent Teleport Check Duration: 25', 'Boots of Travel 2 Channel Time Reduction: 1'],'base');
Item Bottle = Item('Bottle','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/fa/Bottle_%28Full%29_icon.png/revision/latest?cb=20160530164631', '675 ', [], 'Consumes a charge to restore 110 health and 60 mana over 3 seconds. If the hero is attacked by an enemy hero or Roshan, the effect is lost.The Bottle automatically refills at the fountain.Hold Control to use on an allied hero.', ['Cast Animation:\xa0 0+0', 'Cast Range: 350', 'Total Health Restored: 110', 'Total Mana Restored: 60', 'Charge Replenish per Power Rune: 3', 'Charge Replenish per Other Rune: 2', 'Regen Duration: 2.7'],'base');
Item Aghanims_Shard = Item('Aghanims Shard','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/d8/Aghanim%27s_Shard_icon.png/revision/latest?cb=20201218232020', '1400 ', [], 'Upgrades an existing ability or adds a new ability to your hero.', [],'base');
Item Iron_Branch = Item('Iron Branch','https://static.wikia.nocookie.net/dota2_gamepedia/images/a/a3/Iron_Branch_icon.png/revision/latest?cb=20160530171055', '50 ', ['+1 Strength', '+1 Agility', '+1 Intelligence\n'], 'Targets the ground to plant a happy little tree that lasts for 20 seconds.', ['Cast Range:  400', 'Duration: 20'],'base');
Item Gauntlets_of_Strength = Item('Gauntlets of Strength','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/88/Gauntlets_of_Strength_icon.png/revision/latest?cb=20160530170531', '140 ', ['+3 Strength\n'], '', [],'base');
Item Mantle_of_Intelligence = Item('Mantle of Intelligence','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/cf/Mantle_of_Intelligence_icon.png/revision/latest?cb=20160530171312', '140 ', ['+3 Intelligence\n'], '', [],'base');
Item Slippers_of_Agility = Item('Slippers of Agility','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/5c/Slippers_of_Agility_icon.png/revision/latest?cb=20160530173411', '140 ', ['+3 Agility\n'], '', [],'base');
Item Circlet = Item('Circlet','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/28/Circlet_icon.png/revision/latest?cb=20160530165058', '155 ', ['+2 Strength', '+2 Agility', '+2 Intelligence\n'], '', [],'base');
Item Band_of_Elvenskin = Item('Band of Elvenskin','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/ca/Band_of_Elvenskin_icon.png/revision/latest?cb=20160530163807', '450 ', ['+6 Agility\n'], '', [],'base');
Item Belt_of_Strength = Item('Belt of Strength','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f6/Belt_of_Strength_icon.png/revision/latest?cb=20160530163903', '450 ', ['+6 Strength\n'], '', [],'base');
Item Crown = Item('Crown','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/46/Crown_icon.png/revision/latest?cb=20181119230330', '450 ', ['+4 Strength', '+4 Agility', '+4 Intelligence\n'], '', [],'base');
Item Robe_of_the_Magi = Item('Robe of the Magi','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/b3/Robe_of_the_Magi_icon.png/revision/latest?cb=20160530172926', '450 ', ['+6 Intelligence\n'], '', [],'base');
Item Blade_of_Alacrity = Item('Blade of Alacrity','https://static.wikia.nocookie.net/dota2_gamepedia/images/a/a2/Blade_of_Alacrity_icon.png/revision/latest?cb=20160530164022', '1000 ', ['+10 Agility\n'], '', [],'base');
Item Diadem = Item('Diadem','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/87/Diadem_icon.png/revision/latest?cb=20230420234338', '1000 ', ['+6 Strength', '+6 Agility', '+6 Intelligence\n'], '', [],'base');
Item Ogre_Axe = Item('Ogre Axe','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/dd/Ogre_Axe_icon.png/revision/latest?cb=20160530171933', '1000 ', ['+10 Strength\n'], '', [],'base');
Item Staff_of_Wizardry = Item('Staff of Wizardry','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/8a/Staff_of_Wizardry_icon.png/revision/latest?cb=20160530173603', '1000 ', ['+10 Intelligence\n'], '', [],'base');
Item Quelling_Blade = Item('Quelling Blade','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/94/Quelling_Blade_icon.png/revision/latest?cb=20160530172535', '100 ', [], 'Destroy a target tree.', ['Cast Range:  350'],'base');
Item Ring_of_Protection = Item('Ring of Protection','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/3b/Ring_of_Protection_icon.png/revision/latest?cb=20160530172859', '175 ', ['+2 Armor\n'], '', [],'base');
Item Infused_Raindrops = Item('Infused Raindrops','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/d2/Infused_Raindrops_icon.png/revision/latest?cb=20160530170956', '225 ', ['+0.8 Mana Regeneration\n'], 'Consumes a charge to block 120 magic damage from damage instances over 75 damage.Comes with 6 charges. When the charges are gone, the item disappears.', ['Min Damage Threshold: 75', 'Magical Damage Blocked: 120', 'Number of Charges: 6'],'base');
Item Orb_of_Venom = Item('Orb of Venom','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/35/Orb_of_Venom_icon.png/revision/latest?cb=20160530171957', '250 ', [], 'Poisons the target, dealing 2 magical damage per second and slowing movement by 13% if the equipped hero is melee, or by 4% if they are ranged. Lasts for 2 seconds.', ['Move Speed Slow (Melee): 13%', 'Move Speed Slow (Ranged): 4%', 'Damage per Second: 2', 'Duration: 2'],'base');
Item Blight_Stone = Item('Blight Stone','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/98/Blight_Stone_icon.png/revision/latest?cb=20160530164129', '300 ', [], 'Your attacks reduce the targets armor by 2 for 8 seconds.', ['Armor Reduction: 2', 'Duration: 8'],'base');
Item Blades_of_Attack = Item('Blades of Attack','https://static.wikia.nocookie.net/dota2_gamepedia/images/e/ed/Blades_of_Attack_icon.png/revision/latest?cb=20160530164106', '450 ', ['+9 Attack Damage\n'], '', [],'base');
Item Gloves_of_Haste = Item('Gloves of Haste','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/16/Gloves_of_Haste_icon.png/revision/latest?cb=20160530170623', '450 ', ['+20 Attack Speed\n'], '', [],'base');
Item Chainmail = Item('Chainmail','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f2/Chainmail_icon.png/revision/latest?cb=20160530165032', '550 ', ['+4 Armor\n'], '', [],'base');
Item Javelin = Item('Javelin','https://static.wikia.nocookie.net/dota2_gamepedia/images/e/ed/Javelin_icon.png/revision/latest?cb=20160530171126', '900 ', [], 'Grants each attack a 30% chance to pierce through evasion and deal 60 bonus magical damage.', ['Proc Chance: 30%', 'Damage: 60'],'base');
Item Helm_of_Iron_Will = Item('Helm of Iron Will','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f6/Helm_of_Iron_Will_icon.png/revision/latest?cb=20160530170854', '975 ', ['+4 Health Regeneration', '+4 Armor\n'], '', [],'base');
Item Blitz_Knuckles = Item('Blitz Knuckles','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/8c/Blitz_Knuckles_icon.png/revision/latest?cb=20200629211227', '1000 ', ['+35 Attack Speed\n'], '', [],'base');
Item Broadsword = Item('Broadsword','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/3e/Broadsword_icon.png/revision/latest?cb=20160530164859', '1000 ', ['+15 Attack Damage\n'], '', [],'base');
Item Claymore = Item('Claymore','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/49/Claymore_icon.png/revision/latest?cb=20160530165121', '1350 ', ['+20 Attack Damage\n'], '', [],'base');
Item Mithril_Hammer = Item('Mithril Hammer','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/d5/Mithril_Hammer_icon.png/revision/latest?cb=20160530171455', '1600 ', ['+24 Attack Damage\n'], '', [],'base');
Item Ring_of_Regen = Item('Ring of Regen','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6d/Ring_of_Regen_icon.png/revision/latest?cb=20160530172912', '175 ', ['+1.25 Health Regeneration\n'], '', [],'base');
Item Sages_Mask = Item('Sages Mask','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/c6/Sage%27s_Mask_icon.png/revision/latest?cb=20160530173019', '175 ', ['+0.7 Mana Regeneration\n'], '', [],'base');
Item Magic_Stick = Item('Magic Stick','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/59/Magic_Stick_icon.png/revision/latest?cb=20160530171235', '200 ', [], 'Instantly restores 15 health and mana per charge stored. Max 10 charges. Gains a charge whenever a visible enemy within 1200 range uses an ability.', ['Cast Animation:\xa0 0+0', 'Radius: 1200', 'Charges per Cast Spell: 1', 'Max Charges: 10', 'Health and Mana Restored per Charge: 15'],'base');
Item Fluffy_Hat = Item('Fluffy Hat','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/b5/Fluffy_Hat_icon.png/revision/latest?cb=20201222194521', '250 ', ['+125 Health\n'], '', [],'base');
Item Wind_Lace = Item('Wind Lace','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/91/Wind_Lace_icon.png/revision/latest?cb=20160530174050', '250 ', ['+20 Move Speed\n'], '', [],'base');
Item Boots_of_Speed = Item('Boots of Speed','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/97/Boots_of_Speed_icon.png/revision/latest?cb=20160530164329', '500 ', ['+45 Move Speed\n'], '', [],'base');
Item Ring_of_Health = Item('Ring of Health','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/29/Ring_of_Health_icon.png/revision/latest?cb=20160530172847', '700 ', ['+4.5 Health Regeneration\n'], '', [],'base');
Item Voodoo_Mask = Item('Voodoo Mask','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/60/Voodoo_Mask_icon.png/revision/latest?cb=20200715211909', '700 ', ['+12% Spell Lifesteal (Hero)', '+2.4% Spell Lifesteal (Creep)\n'], '10% of spell damage dealt to enemy heroes is returned to the caster as health, regardless of spell damage type.Lifesteal reduced to 2% against creeps.', ['Hero Spell Lifesteal: 10%', 'Creep Spell Lifesteal: 2%'],'base');
Item Cloak = Item('Cloak','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/21/Cloak_icon.png/revision/latest?cb=20160530165135', '800 ', ['+20% Magic Resistance\n'], '', [],'base');
Item Gem_of_True_Sight = Item('Gem of True Sight','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/1d/Gem_of_True_Sight_icon.png/revision/latest?cb=20160530170545', '900 ', [], 'Gives True Sight over a 300 radius revealing wards and units even in Fog of War.', ['Cast Range: 300', 'Radius:  300', 'Duration: 4', 'Aura Linger Duration: 0.5'],'base');
Item Morbid_Mask = Item('Morbid Mask','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/76/Morbid_Mask_icon.png/revision/latest?cb=20160530171549', '900 ', [], 'Heals the attacker for 18% of attack damage dealt. Lifesteal from creeps is reduced by 60%', ['Hero Lifesteal: 18%', 'Creep Lifesteal: 10.8%'],'base');
Item Shadow_Amulet = Item('Shadow Amulet','https://static.wikia.nocookie.net/dota2_gamepedia/images/0/07/Shadow_Amulet_icon.png/revision/latest?cb=20160530173250', '1000 ', [], 'Grants invisibility to you or a target allied hero as long as the target unit remains still.Has a 1.25 second fade time, and breaks instantly upon moving. There is no cooldown when using this item on yourself.', ['Cast Animation:\xa0 0+0', 'Cast Range:  600', 'Fade Time: 1.25', 'Duration: 15', 'Self Cast Cooldown: 0'],'base');
Item Ghost_Scepter = Item('Ghost Scepter','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/9d/Ghost_Scepter_icon.png/revision/latest?cb=20160530170557', '1500 ', ['+5 Strength', '+5 Agility', '+5 Intelligence\n'], 'You enter ghost form for 4 seconds, becoming immune to physical damage, but are unable to attack and 40% more vulnerable to magic damage.', ['Cast Animation:\xa0 0+0', 'Magic Resistance Reduction: 40%', 'Duration: 4'],'base');
Item Ring_of_Tarrasque = Item('Ring of Tarrasque','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/78/Ring_of_Tarrasque_icon.png/revision/latest?cb=20181119230142', '1800 ', ['+12 Health Regeneration\n'], '', [],'base');
Item Tiara_of_Selemene = Item('Tiara of Selemene','https://static.wikia.nocookie.net/dota2_gamepedia/images/e/e1/Tiara_of_Selemene_icon.png/revision/latest?cb=20231215074137', '1800 ', ['+6 Mana Regeneration\n'], '', [],'base');
Item Blink_Dagger = Item('Blink Dagger','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/4c/Blink_Dagger_icon.png/revision/latest?cb=20160530164152', '2250 ', [], 'Teleport to a target point up to 1200 units away. Blink Dagger cannot be used for 3 seconds after taking damage from an enemy hero or Roshan.', ['Cast Range: Global', 'Max Blink Distance:  1200', 'Penalty Blink Distance:  960', 'Damage Mute Duration: 3'],'base');
Item Energy_Booster = Item('Energy Booster','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/72/Energy_Booster_icon.png/revision/latest?cb=20160530170229', '800 ', ['+250 Mana\n'], '', [],'base');
Item Vitality_Booster = Item('Vitality Booster','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/1c/Vitality_Booster_icon.png/revision/latest?cb=20160530174012', '1000 ', ['+250 Health\n'], '', [],'base');
Item Cornucopia = Item('Cornucopia','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/20/Cornucopia_icon.png/revision/latest?cb=20230421051510', '1200 ', ['+5 Health Regeneration', '+2 Mana Regeneration', '+7 Attack Damage\n'], '', [],'base');
Item Point_Booster = Item('Point Booster','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/57/Point_Booster_icon.png/revision/latest?cb=20160530172312', '1200 ', ['+175 Health', '+175 Mana\n'], '', [],'base');
Item Talisman_of_Evasion = Item('Talisman of Evasion','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/37/Talisman_of_Evasion_icon.png/revision/latest?cb=20160530173629', '1300 ', ['+20% Evasion\n'], '', [],'base');
Item Platemail = Item('Platemail','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/4f/Platemail_icon.png/revision/latest?cb=20160530172259', '1400 ', ['+10 Armor\n'], '', [],'base');
Item Hyperstone = Item('Hyperstone','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6a/Hyperstone_icon.png/revision/latest?cb=20160530170943', '2000 ', ['+60 Attack Speed\n'], '', [],'base');
Item Demon_Edge = Item('Demon Edge','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/ba/Demon_Edge_icon.png/revision/latest?cb=20160530165503', '2200 ', ['+40 Attack Damage\n'], '', [],'base');
Item Eaglesong = Item('Eaglesong','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/9a/Eaglesong_icon.png/revision/latest?cb=20160530170146', '2800 ', ['+25 Agility\n'], '', [],'base');
Item Mystic_Staff = Item('Mystic Staff','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/29/Mystic_Staff_icon.png/revision/latest?cb=20160530171605', '2800 ', ['+25 Intelligence\n'], '', [],'base');
Item Reaver = Item('Reaver','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/37/Reaver_icon.png/revision/latest?cb=20160530172613', '2800 ', ['+25 Strength\n'], '', [],'base');
Item Ultimate_Orb = Item('Ultimate Orb','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/14/Ultimate_Orb_icon.png/revision/latest?cb=20160530173905', '2800 ', ['+15 Strength', '+15 Agility', '+15 Intelligence\n'], '', [],'base');
Item Sacred_Relic = Item('Sacred Relic','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/7c/Sacred_Relic_icon.png/revision/latest?cb=20160530172959', '3400 ', ['+55 Attack Damage\n'], '', [],'base');
Item Magic_Wand = Item('Magic Wand','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/74/Magic_Wand_icon.png/revision/latest?cb=20160829124055', '450', ['+3 Strength', '+3 Agility', '+3 Intelligence\n'], 'Instantly restores 15 health and mana per charge stored.Max 20 charges. Gains a charge whenever a visible enemy within 1200 range uses an ability.', ['Cast Animation:\xa0 0+0', 'Radius: 1200', 'Charges per Cast Spell: 1', 'Max Charges: 20', 'Health and Mana Restored per Charge: 15'],'difficult');
Item Bracer = Item('Bracer','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6e/Bracer_icon.png/revision/latest?cb=20160530164846', '505', ['+5/10 Strength', '+2/4 Agility', '+2/4 Intelligence', '+0.75/1.5 Health Regeneration', '+3/6 Attack Damage\n'], '', [],'difficult');
Item Null_Talisman = Item('Null Talisman','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/90/Null_Talisman_icon.png/revision/latest?cb=20160530171748', '505', ['+2/4 Strength', '+2/4 Agility', '+5/10 Intelligence', '+3%/6% Mana', '+0.75/1.5 Mana Regeneration\n'], '', [],'difficult');
Item Wraith_Band = Item('Wraith Band','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/55/Wraith_Band_icon.png/revision/latest?cb=20160530174103', '505', ['+2/4 Strength', '+5/10 Agility', '+2/4 Intelligence', '+1.75/3.5 Armor', '+5/10 Attack Speed\n'], '', [],'difficult');
Item Soul_Ring = Item('Soul Ring','https://static.wikia.nocookie.net/dota2_gamepedia/images/a/a6/Soul_Ring_icon.png/revision/latest?cb=20160530173547', '805', ['+6 Strength', '+2 Armor\n'], 'Consume 170 health to temporarily gain 170 mana. Lasts 10 seconds.If the mana gained cannot fit in your mana pool, it creates a buffer of mana that will be used before your mana pool.', ['Cast Animation:\xa0 0+0', 'Mana Bonus: 170', 'Duration: 10'],'difficult');
Item Orb_of_Corrosion = Item('Orb of Corrosion','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/97/Orb_of_Corrosion_icon.png/revision/latest?cb=20201218233511', '875', ['+3 Armor', '+25 Attack Speed\n'], 'Dealing 5 damage per second, and slowing movement by 13% if the equipped hero is melee, or by 4% if they are ranged and reduces heals, health regeneration, lifesteal and spell lifesteal by 20% . Affects Buildings.Lasts for 3 seconds.', ['Health Restoration Reduction: 20%', 'Move Speed Slow (Melee): 13%', 'Move Speed Slow (Ranged): 4%', 'Damage per Second: 5', 'Duration: 3'],'difficult');
Item Falcon_Blade = Item('Falcon Blade','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/4a/Falcon_Blade_icon.png/revision/latest?cb=20201218232647', '1125', ['+200 Health', '+1.8 Mana Regeneration', '+14 Attack Damage\n'], '', [],'difficult');
Item Perseverance = Item('Perseverance','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/fb/Perseverance_icon.png/revision/latest?cb=20160530172220', '1400', ['+6.5 Health Regeneration', '+2.25 Mana Regeneration\n'], '', [],'difficult');
Item Power_Treads = Item('Power Treads','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6b/Power_Treads_icon.png/revision/latest?cb=20160530172508', '1400', ['+55  Move Speed', '+45  Move Speed', '+25 Attack Speed\n'], 'Switches between +10 Strength, +10 Agility, or +10 Intelligence.', ['Cast Animation:\xa0 0+0', 'Selected Attribute Bonus: 10'],'difficult');
Item Phase_Boots = Item('Phase Boots','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/98/Phase_Boots_icon.png/revision/latest?cb=20160530172232', '1500', ['+4 Armor', '+50 Move Speed', '+18  Attack Damage', '+12  Attack Damage\n'], 'Gives 20% increased movement speed on melee heroes, and 10% on ranged heroes, and lets you move through units and turn more quickly for 3 seconds.', ['Cast Animation:\xa0 0+0', 'Move Speed Bonus (Melee): 20%', 'Move Speed Bonus (Ranged): 10%', 'Turn Rate (Melee): 1', 'Duration: 3'],'difficult');
Item Oblivion_Staff = Item('Oblivion Staff','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/7b/Oblivion_Staff_icon.png/revision/latest?cb=20160530171802', '1625', ['+10 Intelligence', '+1.25 Mana Regeneration', '+35 Attack Speed\n'], '', [],'difficult');
Item Mask_of_Madness = Item('Mask of Madness','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/76/Mask_of_Madness_icon.png/revision/latest?cb=20160530171413', '1900', ['+20 Attack Damage\n'], 'Gives 110 attack speed and 30 movement speed, but reduces your armor by 8 and silences you. Lasts 6 seconds.', ['Cast Animation:\xa0 0+0', 'Attack Speed Bonus: 110', 'Move Speed Bonus: 30', 'Armor Reduction: 8', 'Duration: 6'],'difficult');
Item Hand_of_Midas = Item('Hand of Midas','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/5b/Hand_of_Midas_icon.png/revision/latest?cb=20160530170658', '2200', ['+35 Attack Speed\n'], 'Kills a non-hero target for 160 gold and 2.1x experience. When used on a neutral creep, guarantees to create a neutral item if available. Cannot be used on Ancient Creeps.', ['Cast Range:  600', 'Set Neutral Gold Bounty: 160', 'Experience Bonus Multiplier: 2.1', 'Set Neutral Item Drop Rate: 100%', 'Initial Charges: 1'],'difficult');
Item Boots_of_Travel = Item('Boots of Travel','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6d/Boots_of_Travel_1_icon.png/revision/latest?cb=20160530164348', '2500', ['+90/110 Move Speed\n'], 'Boots of Travel:Upgrades your Town Portal Scroll, allowing it to target units, reduces cooldown and does not consume a charge on usage.Boots of Travel 2:Upgrades your Town Portal Scroll, allowing it to target units and heroes, reduces cooldown, channel time and does not consume a charge on usage.', ['Town Portal Scroll Cooldown: 40/40', 'Channel Time Reduction: 0/1'],'difficult');
Item Helm_of_the_Dominator = Item('Helm of the Dominator','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/97/Helm_of_the_Dominator_icon.png/revision/latest?cb=20160530170906', '2625', ['+6 Strength', '+6 Agility', '+6 Intelligence', '+6 Health Regeneration', '+6 Armor\n'], 'Takes control of one neutral target unit and sets its movement speed to 380 and max health to a minimum of 1000. Also provides the unit with +25 base attack damage, +12 health regen, +4 mana regen and +4 armor. Dominated units with a max health of greater than 1000 retain their original max health.  Dominated units bounty is set to 100 gold.', ['Cast Range:  700', 'Max Units: 1', 'Min Base Health: 1000', 'Set Move Speed: 380', 'Set Gold Bounty: 100', 'Base Attack Damage Bonus: 25', 'Health Regen Bonus: 12', 'Mana Regen Bonus: 4', 'Armor Bonus: 4'],'difficult');
Item Moon_Shard = Item('Moon Shard','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/21/Moon_Shard_icon.png/revision/latest?cb=20160530171534', '4000', ['+140 Attack Speed\n'], 'Consume the Moon Shard to permanently gain 60 attack speed and 200 bonus night vision. Max 1 use.', ['Cast Animation:\xa0 0+0', 'Cast Range: Global', 'Attack Speed Bonus: 60', 'Base Night Vision Bonus: 200'],'difficult');
Item Helm_of_the_Overlord = Item('Helm of the Overlord','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f8/Helm_of_the_Overlord_icon.png/revision/latest?cb=20201218233330', '5725', ['+21 Strength', '+21 Agility', '+21 Intelligence', '+7 Health Regeneration', '+7 Armor\n'], 'Takes control of one neutral target unit and sets its movement speed to 380 and max health to a minimum of 1800. Also provides the unit with +70 base attack damage, +12 health regen, +4 mana regen and +7 armor. Dominated units with a max health of greater than 1800 retain their original max health. Dominated units bounty is set to 250 gold.', ['Cast Range: 700', 'Max Units: 1', 'Min Base Health: 1800', 'Set Move Speed: 380', 'Set Gold Bounty: 250', 'Base Attack Damage Bonus: 70', 'Health Regen Bonus: 12', 'Mana Regen Bonus: 4', 'Armor Bonus: 7', 'Creep Ability Level Bonus: 1'],'difficult');
Item Buckler = Item('Buckler','https://static.wikia.nocookie.net/dota2_gamepedia/images/a/ae/Buckler_%28Inactive%29_icon.png/revision/latest?cb=20191221132412', '425', ['+1 Armor\n'], 'Grants 2 armor to player units.', ['Radius: 1200', 'Armor Bonus: 2', 'Aura Linger Duration: 0.5'],'difficult');
Item Headdress = Item('Headdress','https://static.wikia.nocookie.net/dota2_gamepedia/images/0/03/Headdress_icon.png/revision/latest?cb=20160530170800', '425', ['+0.5 Health Regeneration\n'], 'Grants 2 health regeneration to allies.', ['Radius: 1200', 'Health Regen Bonus: 2', 'Aura Linger Duration: 0.5'],'difficult');
Item Ring_of_Basilius = Item('Ring of Basilius','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/26/Ring_of_Basilius_%28Active%29_icon.png/revision/latest?cb=20160530172819', '425', ['+0.5 Mana Regeneration\n'], 'Grants 1 mana regeneration to allies.', ['Radius: 1200', 'Mana Regeneration Bonus: 1', 'Aura Linger Duration: 0.5'],'difficult');
Item Urn_of_Shadows = Item('Urn of Shadows','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/58/Urn_of_Shadows_icon.png/revision/latest?cb=20160530173928', '880', ['+2 Strength', '+2 Agility', '+2 Intelligence', '+1.4 Mana Regeneration', '+2 Armor\n'], 'Provides 30 health regeneration when cast on allies, and deals 25 damage per second when cast on enemies.Lasts 8 seconds.Gains charges every time an enemy hero dies within 1400 units. Only the closest Urn to the dying hero will gain a charge.', ['Charge Replenish on Death: 1', 'Cast Range:  750', 'Charge Gain Radius: 1400', 'Ally Health Regen Bonus: 30', 'Enemy Damage per Second: 25', 'Duration: 8'],'difficult');
Item Tranquil_Boots = Item('Tranquil Boots','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/23/Tranquil_Boots_%28Active%29_icon.png/revision/latest?cb=20160530173837', '925', ['+14 Health Regeneration', '+65 Move Speed\n'], 'Whenever you attack a hero or are attacked by any unit, the bonus 14 HP regen is lost and the movement speed bonus is reduced to 40 for 13 seconds.', ['Move Speed Reduction: 25', 'Health Regen Reduction: 14'],'difficult');
Item Arcane_Boots = Item('Arcane Boots','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/be/Arcane_Boots_icon.png/revision/latest?cb=20160530174210', '1300', ['+0.75 Mana Regeneration', '+45 Move Speed\n'], 'Restores 175 mana to all nearby allies.', ['Cast Animation:\xa0 0+0', 'Radius:  1200', 'Mana Restored: 175'],'difficult');
Item Pavise = Item('Pavise','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/2f/Pavise_icon.png/revision/latest?cb=20230421051550', '1400  (175)', ['+150 Health', '+250 Mana', '+2 Armor\n'], 'When cast on an ally, grants them a barrier that absorbs 300 physical damage. Duration: 8s.', ['Cast Range:  1000', 'Barrier Capacity:  300', 'Duration: 8'],'difficult');
Item Drum_of_Endurance = Item('Drum of Endurance','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/91/Drum_of_Endurance_icon.png/revision/latest?cb=20160530170120', '1650', ['+7 Strength', '+7 Intelligence\n'], 'Consumes a charge and gives +45 attack speed and +13% movement speed to nearby allies for 6 seconds.Comes with 8 charges.', ['Cast Animation:\xa0 0+0', 'Radius: 1200', 'Move Speed Bonus: 13%', 'Attack Speed Bonus: 45', 'Duration: 6'],'difficult');
Item Mekansm = Item('Mekansm','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f7/Mekansm_icon.png/revision/latest?cb=20160530171439', '1775', ['+4 Armor\n'], 'Heals 275 health to allied units in a 1200 radius.', ['Cast Animation:\xa0 0+0', 'Radius:  1200', 'Health Restored: 275', 'Heal Stack Limit Duration: 49'],'difficult');
Item Vladmirs_Offering = Item('Vladmirs Offering','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/28/Vladmir%27s_Offering_icon.png/revision/latest?cb=20160530174026', '2200', ['+0.75 Mana Regeneration', '+2 Armor\n'], 'Grants 20% lifesteal, 18% bonus damage, 1 mana regeneration, and 2 armor to nearby allies. Lifesteal from creeps is reduced by 40%.', ['Radius: 1200', 'Hero Lifesteal: 20%', 'Creep Lifesteal: 12%', 'Mana Regen Bonus: 1', 'Attack Damage Bonus: 18%', 'Armor Bonus: 2', 'Aura Linger Duration: 0.5'],'difficult');
Item Holy_Locket = Item('Holy Locket','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/48/Holy_Locket_icon.png/revision/latest?cb=20181119230146', '2350', ['+9 Strength', '+9 Agility', '+9 Intelligence\n'], 'Target an allied unit to instantly restore 17 health and mana per charge stored.Max 20 charges. Automatically gains a charge every 8 seconds and whenever a visible enemy within 1200 range uses an ability.', ['Cast Animation:\xa0 0+0', 'Cast Range:  500', 'Radius: 1200', 'Charges per Cast Spell: 1', 'Max Charges: 20', 'Health and Mana Restored per Charge: 17'],'difficult');
Item Spirit_Vessel = Item('Spirit Vessel','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/2a/Spirit_Vessel_icon.png/revision/latest?cb=20171101184152', '2780', ['+6 Strength', '+6 Agility', '+6 Intelligence', '+125 Health', '+1.75 Mana Regeneration', '+2 Armor\n'], 'When used against enemies, it reduces health by 4% of current health per second, and reduces HP regeneration and healing by 45%. Deals 35 damage per second.When used on allies, it provides 40 health regeneration per second.Lasts 8 seconds.Gains charges every time an enemy hero dies within 1400 units. Only the closest Spirit Vessel to the dying hero will gain a charge.', ['Charge Replenish on Death: 1', 'Cast Range:  750', 'Charge Gain Radius: 1400', 'Ally Health Regen Bonus: 40', 'Enemy Damage per Second: 35', 'Enemy Current Health as Damage per Second: 4%', 'Enemy Health Restoration Reduction: 45%', 'Duration: 8'],'difficult');
Item Pipe_of_Insight = Item('Pipe of Insight','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/76/Pipe_of_Insight_icon.png/revision/latest?cb=20160530172244', '3725', ['+14 Health Regeneration', '+20% Magic Resistance\n'], 'Gives a shield that blocks 450 magic damage to all nearby allies. Lasts 12 seconds.', ['Cast Animation:\xa0 0+0', 'Radius:  1200', 'Damage Barrier:  450', 'Duration: 12'],'difficult');
Item Boots_of_Bearing = Item('Boots of Bearing','https://static.wikia.nocookie.net/dota2_gamepedia/images/e/e9/Boots_of_Bearing_icon.png/revision/latest?cb=20220227041455', '4275', ['+8 Strength', '+8 Intelligence', '+15 Health Regeneration', '+65 Move Speed\n'], 'Gives +50 attack speed, +15% Movement Speed to nearby allies for 6 seconds. For the first 1.5 seconds allies are immune to slows.', ['Cast Animation:\xa0 0+0', 'Radius:  1200', 'Move Speed Bonus: 15%', 'Attack Speed Bonus: 50', 'Slow Resistance Bonus: 100%', 'Slow Resistance Duration: 1.5', 'Buff Duration: 6'],'difficult');
Item Guardian_Greaves = Item('Guardian Greaves','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/94/Guardian_Greaves_icon.png/revision/latest?cb=20160530170645', '4950', ['+1.5 Mana Regeneration', '+4 Armor', '+50 Move Speed\n'], 'Restores 350 health and 200 mana to nearby allies, and removes most negative effects from the caster.', ['Cast Animation:\xa0 0+0', 'Radius:  1200', 'Health Restored: 350', 'Mana Restored: 200', 'Heal Stack Limit Duration: 39'],'difficult');
Item Parasma = Item('Parasma','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6e/Parasma_icon.png/revision/latest?cb=20231215082757', '5975', [], 'Causes your next attack to apply a poison for 4 seconds, slowing by 25% and dealing 1x your intelligence as damage every second. This attack has True Strike.', ['Intelligence as Damage per Second: 100%', 'Move Speed Slow: 25%', 'Duration: 4'],'difficult');
Item Veil_of_Discord = Item('Veil of Discord','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f2/Veil_of_Discord_icon.png/revision/latest?cb=20160530173959', '1725', ['+4 Strength', '+4 Agility', '+4 Intelligence', '+4 Health Regeneration', '+4 Armor\n'], 'Cast a 900 radius blast that causes enemies to take 10% increased damage from spells.', ['Radius:  900', 'Spell Damage Amp:  10%', 'Damage Barrier Reduction:  200', 'Duration: 16'],'difficult');
Item Glimmer_Cape = Item('Glimmer Cape','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/ce/Glimmer_Cape_icon.png/revision/latest?cb=20160530170610', '2150', ['+25% Magic Resistance\n'], 'After a 0.5 second delay, grants invisibility, 40 movement speed and a magic damage barrier that absorbs up to 300 damage to you or a target allied unit for 5 seconds.Can be cast while channelling.', ['Cast Animation:\xa0 0+0', 'Cast Range:  600', 'Fade Time: 0.5', 'Damage Barrier:  300', 'Move Speed Bonus: 40', 'Duration: 5'],'difficult');
Item Force_Staff = Item('Force Staff','https://static.wikia.nocookie.net/dota2_gamepedia/images/a/a2/Force_Staff_icon.png/revision/latest?cb=20160530170519', '2200', ['+10 Intelligence', '+175 Health\n'], 'Pushes any target unit 600 units in the direction it is facing.', ['Cast Animation:\xa00+0', 'Ally Cast Range:  550', 'Enemy Cast Range:  850', 'Push Distance: 600', 'Push Duration: 0.5'],'difficult');
Item Rod_of_Atos = Item('Rod of Atos','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/66/Rod_of_Atos_icon.png/revision/latest?cb=20160530172945', '2250', ['+15 Intelligence', '+300 Health\n'], 'Roots the target for 2 seconds.', ['Cast Range:  1100', 'Root Duration: 2'],'difficult');
Item Aether_Lens = Item('Aether Lens','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/d4/Aether_Lens_icon.png/revision/latest?cb=20200307133528', '2275', ['+300 Mana', '+2.5 Mana Regeneration\n'], 'Increases targeted spell and item cast range by 225.', ['Cast Range Increase: 225'],'difficult');
Item Euls_Scepter_of_Divinity = Item('Euls Scepter of Divinity','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/80/Eul%27s_Scepter_of_Divinity_icon.png/revision/latest?cb=20160530170259', '2625', ['+10 Intelligence', '+2.5 Mana Regeneration', '+20 Move Speed\n'], 'Sweeps a target unit up into a cyclone, making them invulnerable for 2.5 seconds. Cyclone can only be cast on enemy units or yourself.Enemy units take 50 magical damage upon landing.', ['Cast Range:  550', 'Cyclone Radius: 24', 'Damage: 50', 'Duration: 2.5'],'difficult');
Item Solar_Crest = Item('Solar Crest','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/36/Solar_Crest_icon.png/revision/latest?cb=20160530173521', '2700', ['+4 Strength', '+4 Agility', '+4 Intelligence', '+200 Health', '+300 Mana', '+4 Armor', '+25 Move Speed\n'], 'When cast on an ally, grants them 7 armor, 70 attack speed, and 15% movement speed and a 400 Physical Damage Barrier.Does not grant bonus armor, movement or attack speed if used on self.', ['Cast Range:  1000', 'Ally Armor Bonus: 7', 'Ally Attack Speed Bonus: 70', 'Ally Move Speed Bonus: 15%', 'Physical Damage Barrier: 400', 'Duration: 8'],'difficult');
Item Witch_Blade = Item('Witch Blade','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/68/Witch_Blade_icon.png/revision/latest?cb=20201219004719', '2775', ['+12 Intelligence', '+1.5 Mana Regeneration', '+6 Armor', '+40 Attack Speed', '+300 Projectile Speed\n'], 'Causes your next attack to apply a poison for 4 seconds, slowing by 25% and dealing 0.75x your intelligence as damage every second. This attack has True Strike.', ['Intelligence as Damage per Second: 75%', 'Move Speed Slow: 25%', 'Duration: 4'],'difficult');
Item Dagon = Item('Dagon','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/bc/Dagon_1_icon.png/revision/latest?cb=20160530165316', '2850', ['+7/9/11/13/15 Strength', '+7/9/11/13/15 Agility', '+7/9/11/13/15 Intelligence', '+15% Spell Lifesteal (Hero)', '+3% Spell Lifesteal (Creep)\n'], 'Emits a powerful burst of magical damage upon a targeted enemy unit. Heals the caster 75% of damage dealt by Dagon. Upgradable.', ['Damage: 400/500/600/700/800', 'Cast Range:  700/750/800/850/900', 'Damage as Heal: 75%', 'Effect Delay: 0'],'difficult');
Item Orchid_Malevolence = Item('Orchid Malevolence','https://static.wikia.nocookie.net/dota2_gamepedia/images/a/ad/Orchid_Malevolence_icon.png/revision/latest?cb=20160530172207', '3275', ['+12 Intelligence', '+6 Health Regeneration', '+3.5 Mana Regeneration', '+10 Attack Damage', '+40 Attack Speed\n'], 'Silences the target unit for 5 seconds. At the end of the silence, 30% of the damage received while silenced is inflicted as bonus magical damage.', ['Cast Range:  900', 'Damage Dealt as Bonus Damage: 30%', 'Damage Timer: 5', 'Silenced Duration: 5'],'difficult');
Item Aghanims_Scepter = Item('Aghanims Scepter','https://static.wikia.nocookie.net/dota2_gamepedia/images/0/07/Aghanim%27s_Scepter_icon.png/revision/latest?cb=20160530163350', '4200', ['+10 Strength', '+10 Agility', '+10 Intelligence', '+175 Health', '+175 Mana\n'], 'Upgrades the ultimate, and some abilities, of all heroes.', [],'difficult');
Item Octarine_Core = Item('Octarine Core','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/13/Octarine_Core_icon.png/revision/latest?cb=20160530171918', '4800', ['+625 Health', '+625 Mana', '+6 Mana Regeneration\n'], 'Reduces the cooldown time of all spells and items by 25%.', ['Cooldown Reduction: 25%'],'difficult');
Item Refresher_Orb = Item('Refresher Orb','https://static.wikia.nocookie.net/dota2_gamepedia/images/e/e2/Refresher_Orb_icon.png/revision/latest?cb=20160530172642', '5000', ['+18 Health Regeneration', '+8 Mana Regeneration', '+10 Attack Damage\n'], 'Resets the cooldowns of all your items and abilities. Shares a cooldown with Refresher Shard. This items cooldown only progresses in your heros main inventory.', [],'difficult');
Item Scythe_of_Vyse = Item('Scythe of Vyse','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/54/Scythe_of_Vyse_icon.png/revision/latest?cb=20160530173214', '5200', ['+30 Intelligence', '+8.5 Mana Regeneration\n'], 'Turns a target unit into a harmless critter for 2.8 seconds. The target has a base movement speed of 140 and will be silenced, muted, and disarmed.Instantly destroys illusions.', ['Cast Range:  800', 'Set Move Speed: 140', 'Duration: 2.8'],'difficult');
Item Gleipnir = Item('Gleipnir','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/5d/Gleipnir_icon.png/revision/latest?cb=20201222194556', '5450', ['+25 Intelligence', '+350 Health', '+30 Attack Damage', '+30 Attack Speed\n'], 'Roots all enemies in a target 375 radius for 2 seconds and deals 180 damage.', ['Cast Range:  1100', 'Effect Radius:  375', 'Damage: 180', 'Duration: 2'],'difficult');
Item Aghanims_Blessing = Item('Aghanims Blessing','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/24/Aghanim%27s_Blessing_icon.png/revision/latest?cb=20190729085545', '5800', [], 'Upgrades the ultimate, and some abilities, of all heroes.', [],'difficult');
Item Wind_Waker = Item('Wind Waker','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/90/Wind_Waker_icon.png/revision/latest?cb=20201219004456', '6825', ['+35 Intelligence', '+3 Mana Regeneration', '+30 Move Speed\n'], 'Sweeps a target unit up into a cyclone, making them invulnerable for 2.5 seconds. Cyclone can be cast on yourself, enemy units or allied units.Enemy units take 50 magical damage upon landing.', ['Cast Range:  550', 'Cyclone Radius: 24', 'Damage: 50', 'Self Cyclone Speed: 360', 'Duration: 2.5'],'difficult');
Item Vanguard = Item('Vanguard','https://static.wikia.nocookie.net/dota2_gamepedia/images/a/ab/Vanguard_icon.png/revision/latest?cb=20160530173946', '1700', ['+250 Health', '+4.5 Health Regeneration\n'], 'Grants a 60% chance to block 50 damage from incoming attacks on melee heroes, and 25 damage on ranged.', ['Proc Chance: 60%', 'Melee Blocked Damage:  50', 'Ranged Blocked Damage:  25'],'difficult');
Item Blade_Mail = Item('Blade Mail','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/18/Blade_Mail_icon.png/revision/latest?cb=20160530163957', '2100', ['+7 Armor', '+18 Attack Damage\n'], 'For 5.5 seconds, the damage returned from all sources is increased by 85%.', ['Cast Animation:\xa0 0+0', 'Damage Returned: 85%', 'Duration: 5.5'],'difficult');
Item Aeon_Disk = Item('Aeon Disk','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/2b/Aeon_Disk_icon.png/revision/latest?cb=20171101184000', '3000', ['+250 Health', '+300 Mana\n'], 'When you take damage and your health falls below 70%, a strong dispel is applied and you gain a  second buff that provides +75% Status Resistance and causes all damage you deal and are dealt to be reduced to zero. Only triggers on player based damage. Cooldown increases every time it triggers.', ['Max Health Threshold: 70%', 'Damage Reduction: 100%', 'Status Resistance Bonus: 75%', 'Duration: 2.5'],'difficult');
Item Soul_Booster = Item('Soul Booster','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/2f/Soul_Booster_icon.png/revision/latest?cb=20160530173535', '3000', ['+425 Health', '+425 Mana\n'], '', [],'difficult');
Item Eternal_Shroud = Item('Eternal Shroud','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/c5/Eternal_Shroud_icon.png/revision/latest?cb=20201218232622', '3600', [], 'Restores Mana equal to 20% of incoming enemy spell damage before reduction.', ['Damage as Mana Restored: 20%'],'difficult');
Item Crimson_Guard = Item('Crimson Guard','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/70/Crimson_Guard_icon.png/revision/latest?cb=20160530165153', '3725', ['+250 Health', '+12 Health Regeneration', '+8 Armor\n'], 'For 8 seconds, grant nearby allied heroes and buildings a 100% chance to block 70 + 50% of casters strength as damage from each incoming attack.Units may only be affected by Guard once every 34 seconds.', ['Cast Animation:\xa0 0+0', 'Radius:  1200', 'Proc Chance: 100%', 'Blocked Damage: 70', 'Strength as Blocked Damage Bonus: 50%', 'Buff Duration: 8', 'Stack Limit Duration: 34'],'difficult');
Item Lotus_Orb = Item('Lotus Orb','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/c8/Lotus_Orb_icon.png/revision/latest?cb=20160530171208', '3850', ['+6.5 Health Regeneration', '+250 Mana', '+4 Mana Regeneration', '+10 Armor\n'], 'Applies a shield to the target unit for 6 seconds which re-casts most targeted spells back to their caster.The shielded unit will still take damage from the spell.', ['Cast Range:  900', 'Duration: 6'],'difficult');
Item Black_King_Bar = Item('Black King Bar','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/72/Black_King_Bar_icon.png/revision/latest?cb=20160530163925', '4050', ['+10 Strength', '+24 Attack Damage\n'], 'Applies a Basic Dispel. Grants 60% Magic resistance and immunity to pure and reflected damage. For the duration of the effect, any negative effect from enemy spells has no effect.', ['Cast Animation:\xa0 0+0', 'Duration: 9/8/7/6', 'Magic Resistance Bonus: 60%'],'difficult');
Item Bloodstone = Item('Bloodstone','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/5a/Bloodstone_icon.png/revision/latest?cb=20160530164258', '4400', ['+500 Health', '+500 Mana', '+3 Mana Regeneration', '+75 AoE Radius', '+30% Spell Lifesteal (Hero)', '+6% Spell Lifesteal (Creep)\n'], 'Increases Bloodstones Spell Lifesteal by 2.5x. Lasts 6 seconds.', ['Spell Lifesteal Multiplier: 2.5', 'Duration: 6'],'difficult');
Item Hurricane_Pike = Item('Hurricane Pike','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/13/Hurricane_Pike_icon.png/revision/latest?cb=20160530170931', '4450', ['+15 Strength', '+20 Agility', '+15 Intelligence', '+200 Health', '+150  Attack Range\n'], 'Pushes you and target enemy 450 units away from each other, and for 6 seconds, allows you to make 5 attacks against the target without range restrictions and with +100 attack speed.Works like Force Staff when used on self or allies.', ['Ally Cast Range:  650', 'Enemy Cast Range:  450', 'Ally Push Distance: 600', 'Enemy Push Distance: 450', 'Ally Push Duration: 0.4', 'Enemy Push Duration: 0.2', 'Number of Attacks: 5', 'Attack Speed Bonus: 100', 'Buff Duration: 6'],'difficult');
Item Manta_Style = Item('Manta Style','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/84/Manta_Style_icon.png/revision/latest?cb=20160530171300', '4550', ['+10 Strength', '+26 Agility', '+10 Intelligence', '+10% Move Speed', '+15 Attack Speed\n'], 'Creates 2 images of your hero that last 20 seconds.Melee images deal 33% damage, while Ranged images deal 28%. Illusions take 300% damage.', ['Split Time: 0.1', 'Number of Illusions: 2', ' ', ' ', ' ', ' ', 'Damage Dealt (Melee):  33%', 'Damage Dealt (Ranged):  28%', 'Damage Taken:  300%', 'Duration: 20'],'difficult');
Item Linkens_Sphere = Item('Linkens Sphere','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/23/Linken%27s_Sphere_icon.png/revision/latest?cb=20160530171144', '4800', ['+16 Strength', '+16 Agility', '+16 Intelligence', '+6 Health Regeneration', '+4.25 Mana Regeneration\n'], 'Blocks most targeted spells once every 14 seconds.', [],'difficult');
Item Assault_Cuirass = Item('Assault Cuirass','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/d3/Assault_Cuirass_icon.png/revision/latest?cb=20160530163712', '5125', ['+10 Armor', '+30 Attack Speed\n'], 'Grants 30 attack speed and 5 armor to nearby allied units and structures, and decreases nearby enemy unit and structure armor by 5.', ['Radius: 1200', 'Ally Attack Speed Bonus: 30', 'Ally Armor Bonus: 5', 'Enemy Armor Reduction: 5', 'Aura Linger Duration: 0.5'],'difficult');
Item Shivas_Guard = Item('Shivas Guard','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/b6/Shiva%27s_Guard_icon.png/revision/latest?cb=20160530173326', '5175', ['+5 Strength', '+5 Agility', '+5 Intelligence', '+5 Health Regeneration', '+15 Armor\n'], 'Emits a freezing wave that causes enemies to take 15% more damage from spells for 16 seconds, deals 200 magical damage to enemies and slows their movement by 40% for 4 seconds.', ['Cast Animation:\xa0 0+0', 'Radius:  900', 'Damage: 200', 'Illusion Damage Multiplier: 1.5', 'Move Speed Slow: 40%', 'Slow Duration: 4', 'Spell Damage Amp:  15%', 'Damage Amp Duration: 16'],'difficult');
Item Heart_of_Tarrasque = Item('Heart of Tarrasque','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/75/Heart_of_Tarrasque_icon.png/revision/latest?cb=20160530170827', '5200', ['+40 Strength', '+1.6% Max HP Health Regen\n'], '', [],'difficult');
Item Crystalys = Item('Crystalys','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/3f/Crystalys_icon.png/revision/latest?cb=20160530165218', '2000', ['+32 Attack Damage\n'], 'Grants each attack a 30% chance to deal 160% damage.', ['Proc Chance: 30%', 'Critical Damage: 160%'],'difficult');
Item Armlet_of_Mordiggian = Item('Armlet of Mordiggian','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/8d/Armlet_of_Mordiggian_%28Inactive%29_icon.png/revision/latest?cb=20160530163650', '2500', ['+5 Health Regeneration', '+6 Armor', '+15 Attack Damage', '+25 Attack Speed\n'], 'When active, Unholy Strength grants +35 damage, +25 strength, +35% slow resistance and +4 armor, but drains 45 health per second.You cannot die from the health drain when Unholy Strength is activated, nor from the strength loss when Unholy Strength is deactivated.', ['Cast Animation:\xa0 0+0', 'Attack Damage Bonus: 35', 'Strength Bonus: 25', 'Armor Bonus: 4', 'Slow Resistance Bonus: 35%', 'Full Bonuses Delay: 0.6'],'difficult');
Item Meteor_Hammer = Item('Meteor Hammer','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/54/Meteor_Hammer_icon.png/revision/latest?cb=20171030224231', '2850', ['+6 Strength', '+6 Agility', '+24 Intelligence', '+10% Spell Damage Amp', '+75% Mana Regen Amp', '+24% Spell Lifesteal Amp\n'], 'After a successful channel, summons a meteor that strikes a 400 AoE, stunning enemies for 0.5 seconds and dealing impact damage. Continues to deal damage over time to enemy units and buildings for 6 seconds. Non-building units are also slowed for 20% for the duration of the burn.', ['Cast Range:  600', 'Impact Radius:  400', 'Building Impact Damage: 90', 'Non-Building Impact Damage: 130', 'Damage per Second: 50', 'Channel Time: 2', 'Landing Time: 0.5', 'Move Speed Slow: 20%', 'Debuff Duration: 6', 'Stun Duration: 0.5'],'difficult');
Item Skull_Basher = Item('Skull Basher','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/9d/Skull_Basher_icon.png/revision/latest?cb=20160530173357', '2875', ['+10 Strength', '+30 Attack Damage\n'], 'Grants melee heroes a 25% chance on hit to stun the target for 1.2 seconds and deal 100 bonus physical damage. Bash chance for ranged heroes is 10%.', ['Melee Proc Chance: 25%', 'Ranged Proc Chance: 10%', 'Damage: 100', 'Stun Duration: 1.2'],'difficult');
Item Shadow_Blade = Item('Shadow Blade','https://static.wikia.nocookie.net/dota2_gamepedia/images/0/0f/Shadow_Blade_icon.png/revision/latest?cb=20160530173313', '3000', ['+20 Attack Damage', '+35 Attack Speed\n'], 'Makes you invisible for 14 seconds, or until you attack or cast a spell. While Shadow Walk is active, you move 20% faster and can move through units.If attacking to end the invisibility, you gain 175 bonus physical damage on that attack.', ['Cast Animation:\xa0 0+0', 'Fade Time: 0.3', 'Damage: 175', 'Move Speed Bonus: 20%', 'Duration: 14'],'difficult');
Item Desolator = Item('Desolator','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/84/Desolator_icon.png/revision/latest?cb=20160530165519', '3500', [], 'Your attacks reduce the targets armor by 6 for 7 seconds.', ['Armor Reduction: 6', 'Duration: 7'],'difficult');
Item Battle_Fury = Item('Battle Fury','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/c1/Battle_Fury_icon.png/revision/latest?cb=20160530163833', '4100', [], 'Destroy a target tree.', ['Cast Range:  350'],'difficult');
Item Nullifier = Item('Nullifier','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/bc/Nullifier_icon.png/revision/latest?cb=20171101183614', '4375', ['+6 Health Regeneration', '+10 Armor', '+75 Attack Damage\n'], 'Dispels the target and applies a debuff for 5 seconds. Continuously dispels the target.', ['Cast Range: 900', 'Duration: 5'],'difficult');
Item Monkey_King_Bar = Item('Monkey King Bar','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/b0/Monkey_King_Bar_icon.png/revision/latest?cb=20160530171521', '4700', ['+40 Attack Damage', '+45 Attack Speed\n'], 'Grants each attack a 80% chance to pierce through evasion and deal 70 bonus magical damage.', ['Proc Chance: 80%', 'Damage: 70'],'difficult');
Item Radiance = Item('Radiance','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/df/Radiance_%28Active%29_icon.png/revision/latest?cb=20160530172548', '4700', ['+20% Evasion', '+55 Attack Damage\n'], 'When active, scorches enemies for 60 magical damage per second, and causes them to miss 15% of their attacks. Illusions deal 35 magical damage per second.', ['Cast Animation:\xa0 0+0', 'Radius: 700', 'Damage per Second: 60', 'Illusion Damage Multiplier: 1.5', 'Miss Chance: 15%', 'Aura Linger Duration: 0.5', 'Damage per Second: 35'],'difficult');
Item Revenants_Brooch = Item('Revenants Brooch','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/37/Revenant%27s_Brooch_icon.png/revision/latest?cb=20220227041411', '4900', ['+70 Attack Damage', '+20% Spell Lifesteal (Hero)', '+4% Spell Lifesteal (Creep)\n'], 'When enabled, attacks cost 50 mana and deal magical damage.', ['Cast Animation:\xa0 0+0', 'Mana Per Attack: 50'],'difficult');
Item Khanda = Item('Khanda','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/67/Khanda_icon.png/revision/latest?cb=20231215080815', '5000', [], 'Grants each attack a 30% chance to deal 160% damage.', ['Proc Chance: 30%', 'Critical Damage: 160%'],'difficult');
Item Daedalus = Item('Daedalus','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/24/Daedalus_icon.png/revision/latest?cb=20160530165249', '5100', ['+88 Attack Damage\n'], 'Grants each attack a 30% chance to deal 225% damage.', ['Proc Chance: 30%', 'Critical Damage: 225%'],'difficult');
Item Ethereal_Blade = Item('Ethereal Blade','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/5b/Ethereal_Blade_icon.png/revision/latest?cb=20160530170242', '5375', ['+8 Strength', '+8 Agility', '+8 Intelligence', '+300 Mana', '+3 Mana Regeneration', '+250 Cast Range\n'], 'Converts the target unit to ethereal form, rendering them immune to physical damage, but unable to attack and 40% more vulnerable to magic damage.Enemy targets are also slowed by 80%, and take 1.5x your targets primary attribute + 50 as magical damage.', ['Cast Range:  800', 'Base Damage: 50', 'Primary Attribute as Damage Bonus: 150%', 'Universal Attributes as Damage Bonus: 60%', 'Enemy Move Speed Slow: 80%', 'Magic Resistance Reduction: 40%', 'Duration: 4'],'difficult');
Item Butterfly = Item('Butterfly','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/28/Butterfly_icon.png/revision/latest?cb=20160530164923', '5450', ['+35 Agility', '+35% Evasion', '+25 Attack Damage', '+20% Base Attack Speed\n'], '', [],'difficult');
Item Silver_Edge = Item('Silver Edge','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/91/Silver_Edge_icon.png/revision/latest?cb=20160530173343', '5450', ['+60 Attack Damage', '+35 Attack Speed\n'], 'Makes you invisible for 14 seconds, or until you attack or cast a spell.  While invisible, you move 25% faster and can move through units. Attacking to end the invisibility will deal 300 bonus physical damage and disable their passive abilities for 5 seconds.', ['Cast Animation:\xa0 0+0', 'Fade Time: 0.3', 'Damage: 300', 'Move Speed Bonus: 25%', 'Invisibility Duration: 14', 'Break Duration: 5'],'difficult');
Item Divine_Rapier = Item('Divine Rapier','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/b1/Divine_Rapier_icon.png/revision/latest?cb=20160530165837', '5600', ['+350 Attack Damage', '+25% Spell Damage Amp\n'], '', [],'difficult');
Item Disperser = Item('Disperser','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/65/Disperser_icon.png/revision/latest?cb=20230420234355', '6100', ['+40 Agility', '+10 Intelligence\n'], 'Slows the target for 5 seconds if they are an enemy or grants bonus movespeed, applies Basic Dispel and makes them unslowable for 5 seconds if they are an ally. Caster is always granted the ally benefit on cast. Both movement speed reduction and increase start at 100% and gradually decrease to 0% over the course of the buff duration.', ['Cast Range:  600', 'Enemy Move Speed Slow: 100%', 'Ally Move Speed Bonus: 100%', 'Move Speed Change Intervals: 5', 'Move Speed Slow Duration: 5', 'Move Speed Bonus Duration: 5'],'difficult');
Item Abyssal_Blade = Item('Abyssal Blade','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/3b/Abyssal_Blade_icon.png/revision/latest?cb=20160530163207', '6250', [], 'Stuns a target enemy unit for 1.6 seconds.Pierces Spell Immunity.', ['Cast Range: 150', 'Stun Duration: 1.6'],'difficult');
Item Bloodthorn = Item('Bloodthorn','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/f4/Bloodthorn_icon.png/revision/latest?cb=20160530164313', '6625', ['+15 Intelligence', '+6.5 Health Regeneration', '+3.5 Mana Regeneration', '+10 Attack Damage', '+100 Attack Speed\n'], 'Silences a target for 5 seconds. At the end of the silence, an additional 60% of all damage taken during the silence will be dealt to the target as magical damage.All attacks on the silenced target will have 100% accuracy. All attacks on the silenced target will deal 50 extra magical damage and have True Strike.', ['Cast Range:  900', 'Damage Dealt as Bonus Damage: 60%', 'Accuracy: 100%', 'Damage Timer: 5', 'Silenced Duration: 5', 'Bonus Magical Damage: 50'],'difficult');
Item Dragon_Lance = Item('Dragon Lance','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/db/Dragon_Lance_icon.png/revision/latest?cb=20180711225156', '1900', ['+10 Strength', '+15 Agility', '+150  Attack Range\n'], 'Increases attack range of ranged heroes by 150.', ['Attack Range Bonus: 150'],'difficult');
Item Kaya = Item('Kaya','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/65/Kaya_icon.png/revision/latest?cb=20171030224243', '2000', ['+16 Intelligence', '+10% Spell Damage Amp', '+50% Mana Regen Amp', '+20% Spell Lifesteal Amp\n'], '', [],'difficult');
Item Sange = Item('Sange','https://static.wikia.nocookie.net/dota2_gamepedia/images/f/fc/Sange_icon.png/revision/latest?cb=20160530173146', '2000', ['+16 Strength', '+16% Status Resistance', '+20% Health Regen Amp', '+20% Lifesteal Amp\n'], '', [],'difficult');
Item Yasha = Item('Yasha','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/d1/Yasha_icon.png/revision/latest?cb=20160530174117', '2000', ['+16 Agility', '+10% Move Speed', '+15 Attack Speed\n'], '', [],'difficult');
Item Phylactery = Item('Phylactery','https://static.wikia.nocookie.net/dota2_gamepedia/images/8/8c/Phylactery_icon.png/revision/latest?cb=20230420234419', '2400  (200)', ['+7 Strength', '+7 Agility', '+7 Intelligence', '+200 Health', '+200 Mana\n'], 'The next single target spell you cast on an enemy deals a separate 150 bonus damage to the target and slows them by 50% for 1.5 seconds. Cooldown: 6s', ['Spell Damage Bonus: 150', 'Move Speed Slow: 50%', 'Duration: 1.5'],'difficult');
Item Diffusal_Blade = Item('Diffusal Blade','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/65/Diffusal_Blade_1_icon.png/revision/latest?cb=20160530165804', '2500', ['+15 Agility', '+10 Intelligence\n'], 'Targets an enemy, slowing it for 4 seconds.', ['Cast Range:  600', 'Move Speed Slow: 100%', 'Slow Decay Intervals: 5', 'Slow Duration: 4'],'difficult');
Item Echo_Sabre = Item('Echo Sabre','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6b/Echo_Sabre_icon.png/revision/latest?cb=20160530170159', '2700', ['+15 Strength', '+1.75 Mana Regeneration', '+20 Attack Damage\n'], 'Causes melee attacks to attack twice in quick succession. The double attacks apply a 100% movement slow for 0.8 seconds on each strike.', ['Self Attack Speed Bonus: 490', 'Number of Attacks: 1', 'Enemy Move Speed Slow: 100%', 'Enemy Slow Duration: 0.8'],'difficult');
Item Mage_Slayer = Item('Mage Slayer','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/18/Mage_Slayer_icon.png/revision/latest?cb=20201218233351', '2825', ['+10 Intelligence', '+2 Mana Regeneration', '+20% Magic Resistance', '+45 Attack Speed\n'], 'Places a debuff when you attack enemies, dealing 25 damage per second and causing them to do 40% less spell damage for 3 seconds.', ['Damage: 25', 'Spell Damage Reduction:  40%', 'Duration: 3'],'difficult');
Item Maelstrom = Item('Maelstrom','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/65/Maelstrom_icon.png/revision/latest?cb=20160530171221', '2950', ['+25 Attack Damage', '+25 Attack Speed\n'], 'Grants a 30% chance on attack to release a bolt of electricity that leaps between 4 targets within a 650 radius, dealing 120 magical damage to each. Lightning proc pierces evasion.', ['Proc Chance: 30%', 'Bounce Distance: 650', 'Number of Bounces: 4', 'Bounce Interval: 0.25', 'Damage: 120', 'Illusion Damage Multiplier: 1.5'],'difficult');
Item Heavens_Halberd = Item('Heavens Halberd','https://static.wikia.nocookie.net/dota2_gamepedia/images/c/c6/Heaven%27s_Halberd_icon.png/revision/latest?cb=20160530170840', '3500', ['+20 Strength', '+25% Evasion', '+16% Status Resistance', '+25% Health Regen Amp', '+25% Lifesteal Amp\n'], 'Prevents a target from attacking for 3 seconds on melee targets, and 5 seconds on ranged targets.', ['Cast Range:  650', 'Duration (Melee): 3', 'Duration (Ranged): 5'],'difficult');
Item Yasha_and_Kaya = Item('Yasha and Kaya','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/19/Yasha_and_Kaya_icon.png/revision/latest?cb=20181127212540', '4000', ['+16 Agility', '+16 Intelligence', '+12% Move Speed', '+12% Spell Damage Amp', '+20 Attack Speed', '+50% Mana Regen Amp', '+25% Spell Lifesteal Amp\n'], '', [],'difficult');
Item Kaya_and_Sange = Item('Kaya and Sange','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/67/Kaya_and_Sange_icon.png/revision/latest?cb=20181127212550', '4000', ['+16 Strength', '+16 Intelligence', '+25% Status Resistance', '+12% Spell Damage Amp', '+25% Health Regen Amp', '+50% Mana Regen Amp', '+25% Lifesteal Amp', '+25% Spell Lifesteal Amp\n'], '', [],'difficult');
Item Sange_and_Yasha = Item('Sange and Yasha','https://static.wikia.nocookie.net/dota2_gamepedia/images/b/b4/Sange_and_Yasha_icon.png/revision/latest?cb=20181127212530', '4000', ['+16 Strength', '+16 Agility', '+25% Status Resistance', '+12% Move Speed', '+20 Attack Speed', '+25% Health Regen Amp', '+25% Lifesteal Amp\n'], '', [],'difficult');
Item Harpoon = Item('Harpoon','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/3c/Harpoon_icon.png/revision/latest?cb=20230420234406', '4700', ['+25 Strength', '+10 Agility', '+10 Intelligence', '+2 Mana Regeneration', '+25 Attack Damage\n'], 'When targeting an enemy, fire a harpoon at them, that pulls you and the target closer together, up to 35% of the distance between you and your target. If the caster is melee, the hero and target are always pulled to within melee distance of each other.', ['Cast Range:  700', 'Min Pull Distance: 100', 'Max Pull Distance: 1000', 'Ranged Pull Distance: 35%', 'Pull Duration: 0.3'],'difficult');
Item Satanic = Item('Satanic','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/dd/Satanic_icon.png/revision/latest?cb=20160530173201', '5050', ['+25 Strength', '+25 Attack Damage\n'], 'Heals the attacker for 30% of attack damage dealt. Lifesteal from creeps is reduced by 60%', ['Hero Lifesteal: 30%', 'Creep Lifesteal: 18%'],'difficult');
Item Eye_of_Skadi = Item('Eye of Skadi','https://static.wikia.nocookie.net/dota2_gamepedia/images/1/1e/Eye_of_Skadi_icon.png/revision/latest?cb=20160530170315', '5300', ['+22 Strength', '+22 Agility', '+22 Intelligence', '+220 Health', '+220 Mana\n'], 'Attacks lower enemy movement and attack speed and reduces heals, health regeneration and lifesteal by 40% for 3 seconds. Slows enemy ranged units by 50% movement speed and 20% attack speed. Slows enemy melee units by 20% movement speed and 10% attack speed.', ['Move Speed Slow (Against Melee): 20%', 'Move Speed Slow (Against Ranged): 50%', 'Attack Speed Slow (Against Melee): 10%', 'Attack Speed Slow (Against Ranged): 20%', 'Health Restoration Reduction: 40%', 'Duration: 3'],'difficult');
Item Mjollnir = Item('Mjollnir','https://static.wikia.nocookie.net/dota2_gamepedia/images/9/9d/Mjollnir_icon.png/revision/latest?cb=20160530171507', '5500', ['+25 Attack Damage', '+90 Attack Speed\n'], 'Places a charged shield on a target unit for 15 seconds which has a 20% chance to release a 225 magical damage shocking bolt at a nearby attacker and 4 additional enemies.', ['Cast Range:  800', 'Proc Chance: 20%', 'Proc Cooldown: 1', 'Search Radius: 900', 'Max Number of Targets: 5', 'Damage: 225', 'Shield Duration: 15'],'difficult');
Item Arcane_Blink = Item('Arcane Blink','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/28/Arcane_Blink_icon.png/revision/latest?cb=20201218232215', '6800', ['+25 Intelligence\n'], 'Teleport to a target point up to 1400 units away.Arcane Blink mutes for 3s after taking damage from an enemy hero or Roshan.', ['Cast Animation:\xa00+0', 'Cast Range: Global', 'Max Blink Distance:  1400', 'Penalty Blink Distance:  1120', 'Self Heal: 200', 'Self Mana Restore: 100', 'Damage Mute Duration: 3'],'base');
Item Overwhelming_Blink = Item('Overwhelming Blink','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6d/Overwhelming_Blink_icon.png/revision/latest?cb=20201218233620', '6800', ['+25 Strength\n'], 'Teleport to a target point up to 1200 units away. After teleportation, all enemies in a 800 AoE take damage equal to 100 + 50% of your strength and an additional 100% over time, and have 50% movement speed slow and 50 attack speed slow for 6 seconds. Overwhelming Blink cannot be used for 6 seconds after taking damage from an enemy hero or Roshan.', ['Cast Range: Global', 'Max Blink Distance:  1200', 'Penalty Blink Distance:  960', 'Effect Radius:  800', 'Impact Damage: 100', 'Strength as Impact Damage Bonus: 50%', 'Strength as Damage Over Time: 100%', 'Move Speed Slow: 50%', 'Attack Speed Slow: 50', 'Slow Duration: 6', 'Damage Mute Duration: 3'],'base');
Item Swift_Blink = Item('Swift Blink','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/47/Swift_Blink_icon.png/revision/latest?cb=20201219003624', '6800', ['+25 Agility\n'], 'Teleport to a target point up to 1200 units away.After teleportation, you gain 40% phased movement speed and +35 Agility for 6 seconds. Swift Blink cannot be used for 3 seconds after taking damage from an enemy hero or Roshan.', ['Cast Range: Global', 'Max Blink Distance:  1200', 'Penalty Blink Distance:  960', 'Agility Bonus: 35', 'Move Speed Bonus: 40%', 'Duration: 6', 'Damage Mute Duration: 3'],'base');
Item Aegis_of_the_Immortal = Item('Aegis of the Immortal','https://static.wikia.nocookie.net/dota2_gamepedia/images/2/20/Aegis_of_the_Immortal_icon.png/revision/latest?cb=20180214210935', '-', [], 'Brings you to life with full health and mana 5 seconds after you die, at the location where you died.Reincarnation must be used within 5 minutes or Aegis of the Immortal disappears. If it expires, it will heal you over 5 seconds (dispels on damage).', ['Effect Delay: 5', 'Aegis Duration: 300', 'Aegis Duration Turbo: 240', 'Expire Max Health Restored per Second: 20%', 'Expire Max Mana Restored per Second: 20%', 'Expire Restore Duration: 5'],'base');
Item Cheese = Item('Cheese','https://static.wikia.nocookie.net/dota2_gamepedia/images/5/51/Cheese_icon.png/revision/latest?cb=20160530165045', '500', [], 'Instantly restores 2500 health and 1500 mana.', ['Cast Animation:\xa0 0+0', 'Health Restored: 2500', 'Mana Restored: 1500'],'base');
Item Refresher_Shard = Item('Refresher Shard','https://static.wikia.nocookie.net/dota2_gamepedia/images/7/77/Refresher_Shard_icon.png/revision/latest?cb=20171030235827', '500', ['+12 Health Regeneration', '+6 Mana Regeneration', '+20 Attack Damage\n'], 'Resets the cooldowns of all your items and abilities. Shares a cooldown with Refresher Orb. This items cooldown only progresses in your heros main inventory.', ['Cast Animation:\xa0 0+0'],'base');
Item Roshans_Banner = Item('Roshans Banner','https://static.wikia.nocookie.net/dota2_gamepedia/images/d/d6/Roshan%27s_Banner_icon.png/revision/latest?cb=20231230014958', '-', [], 'Creates a banner anywhere on the map. Lane creeps passing by the banner will get a 45s increase of damage and health. Lasts 300 seconds. Can be destroyed.', ['Cast Range: Global', 'Health Bonus: 75%', 'Damage Bonus: 50%', 'Aura Radius: 750', 'Aura Linger Duration: 45', 'Banner Duration: 300'],'base');
Item Block_of_Cheese = Item('Block of Cheese','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/45/Block_of_Cheese_icon.png/revision/latest?cb=20230505180343', '1', [], 'Try me!', ['Cast Animation:\xa0 0+0', 'Cast Range:  250', 'Damage Barrier:  500', 'Barrier Regeneration Rate: 100', 'Damage Cooldown: 5', 'Duration: Permanent'],'base');
Item Great_Healing_Lotus = Item('Great Healing Lotus','https://static.wikia.nocookie.net/dota2_gamepedia/images/6/6e/Great_Healing_Lotus_icon.png/revision/latest?cb=20230505175316', '0 ', [], 'Instantly restores 400 health and mana.', ['Cast Animation:\xa0 0+0', 'Cast Range:  400', 'Pick-up Range Bonus: 150', 'Health Restored: 400', 'Mana Restored: 400'],'base');
Item Greater_Healing_Lotus = Item('Greater Healing Lotus','https://static.wikia.nocookie.net/dota2_gamepedia/images/4/48/Greater_Healing_Lotus_icon.png/revision/latest?cb=20230505175612', '0 ', [], 'Instantly restores 900 health and mana.', ['Cast Animation:\xa0 0+0', 'Cast Range:  400', 'Pick-up Range Bonus: 150', 'Health Restored: 900', 'Mana Restored: 900'],'base');
Item Healing_Lotus = Item('Healing Lotus','https://static.wikia.nocookie.net/dota2_gamepedia/images/3/33/Healing_Lotus_icon.png/revision/latest?cb=20230505174828', '0 ', [], 'Instantly restores 125 health and mana.', ['Cast Animation:\xa0 0+0', 'Cast Range:  400', 'Pick-up Range Bonus: 150', 'Health Restored: 125', 'Mana Restored: 125'],'base');
List <Item> items = [
  Observer_Ward,
  Blood_Grenade,
  Clarity,
  Sentry_Ward, 
  Smoke_of_Deceit, 
  Enchanted_Mango, 
  Faerie_Fire,
  Dust_of_Appearance, 
  Tango,
  Healing_Salve, 
  Town_Portal_Scroll,
  Bottle,
  Aghanims_Shard,
  Iron_Branch,
  Gauntlets_of_Strength, 
  Mantle_of_Intelligence, 
  Slippers_of_Agility,
  Circlet,
  Band_of_Elvenskin,
  Belt_of_Strength,
  Crown,
  Robe_of_the_Magi,
  Blade_of_Alacrity,
  Diadem,
  Ogre_Axe,
  Staff_of_Wizardry,
  Quelling_Blade,
  Ring_of_Protection,
  Infused_Raindrops,
  Orb_of_Venom,
  Blight_Stone, 
  Blades_of_Attack,
  Gloves_of_Haste,
  Chainmail,
  Javelin,
  Helm_of_Iron_Will,
  Blitz_Knuckles,
  Broadsword,
  Claymore,
  Mithril_Hammer,
  Ring_of_Regen,
  Sages_Mask,
  Magic_Stick,
  Fluffy_Hat, 
  Wind_Lace,
  Boots_of_Speed, 
  Ring_of_Health, 
  Voodoo_Mask, 
  Cloak, 
  Gem_of_True_Sight, 
  Morbid_Mask,
  Shadow_Amulet, 
  Ghost_Scepter, 
  Ring_of_Tarrasque, 
  Tiara_of_Selemene, 
  Blink_Dagger, 
  Energy_Booster, 
  Vitality_Booster, 
  Cornucopia,
  Point_Booster, 
  Talisman_of_Evasion, 
  Platemail, 
  Hyperstone,
  Demon_Edge, 
  Eaglesong, 
  Mystic_Staff, 
  Reaver, 
  Ultimate_Orb, 
  Sacred_Relic, 
  Magic_Wand, 
  Bracer,
  Null_Talisman, 
  Wraith_Band, 
  Soul_Ring, 
  Orb_of_Corrosion,
  Falcon_Blade,
  Perseverance,
  Power_Treads, 
  Phase_Boots,
  Oblivion_Staff,
  Mask_of_Madness,
  Hand_of_Midas,
  Boots_of_Travel,
  Helm_of_the_Dominator,
  Moon_Shard, 
  Helm_of_the_Overlord,
  Buckler,
  Headdress,
  Ring_of_Basilius,
  Urn_of_Shadows,
  Tranquil_Boots,
  Arcane_Boots,
  Pavise,
  Drum_of_Endurance,
  Mekansm,
  Vladmirs_Offering,
  Holy_Locket,
  Spirit_Vessel,
  Pipe_of_Insight,
  Boots_of_Bearing,
  Guardian_Greaves,
  Parasma,
  Veil_of_Discord,
  Glimmer_Cape,
  Force_Staff,
  Rod_of_Atos, 
  Aether_Lens,
  Euls_Scepter_of_Divinity,
  Solar_Crest,
  Witch_Blade,
  Dagon,
  Orchid_Malevolence,
  Aghanims_Scepter,
  Octarine_Core,
  Refresher_Orb,
  Scythe_of_Vyse,
  Gleipnir,
  Aghanims_Blessing,
  Wind_Waker,
  Vanguard,
  Blade_Mail, 
  Aeon_Disk, 
  Soul_Booster, 
  Eternal_Shroud, 
  Crimson_Guard,
  Lotus_Orb,
  Black_King_Bar, 
  Bloodstone, 
  Hurricane_Pike, 
  Manta_Style, 
  Linkens_Sphere, 
  Assault_Cuirass, 
  Shivas_Guard, 
  Heart_of_Tarrasque, 
  Crystalys, 
  Armlet_of_Mordiggian, 
  Meteor_Hammer, 
  Skull_Basher, 
  Shadow_Blade, 
  Desolator,
  Battle_Fury, 
  Nullifier, 
  Monkey_King_Bar, 
  Radiance,
  Revenants_Brooch,
  Khanda,
  Daedalus,
  Ethereal_Blade,
  Butterfly,
  Silver_Edge,
  Divine_Rapier,
  Disperser,
  Abyssal_Blade,
  Bloodthorn,
  Dragon_Lance,
  Kaya,
  Sange,
  Yasha,
  Phylactery,
  Diffusal_Blade, 
  Echo_Sabre, 
  Mage_Slayer, 
  Maelstrom, 
  Heavens_Halberd, 
  Yasha_and_Kaya, 
  Kaya_and_Sange, 
  Sange_and_Yasha, 
  Harpoon, 
  Satanic, 
  Eye_of_Skadi, 
  Mjollnir, 
  Arcane_Blink, 
  Overwhelming_Blink, 
  Swift_Blink, 
  Aegis_of_the_Immortal,
  Cheese, 
  Refresher_Shard, 
  Roshans_Banner,
  Block_of_Cheese, 
  Great_Healing_Lotus, 
  Greater_Healing_Lotus, 
  Healing_Lotus, 
];
List<Item> baseItems = [];
List<Item> difficultItems = [];
void itemsListGen(){
  if (baseItems.isEmpty){
    for(Item item in items ){
      if(item.type == 'base'){
        baseItems.addAll([item]);
      }
      else if(item.type == 'difficult'){
        difficultItems.addAll([item]);
      }
    }
  }
}