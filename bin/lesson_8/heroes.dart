import 'dart:math';

import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility _ability;

  Hero(super.health, super.damage, super.name, this._ability);

  SuperAbility get ability => _ability;

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = damage * (RpgGame.random.nextInt(5) + 2); // 2,3,4,5,6
    boss.health -= crit;
    print('Warrior $name hits critically: $crit');
  }
}

class Magic extends Hero {
  Magic(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.boost);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // TODO: implement applySuperPower
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(int health, int damage, String name)
    : super(health, damage, name, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name reverted: $blockedDamage');
  }
}

class Medic extends Hero {
  int healPoints;
  Medic(int health, int damage, String name, this.healPoints)
    : super(health, damage, name, SuperAbility.heal);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && hero != this) {
        hero.health += healPoints;
      }
    }
  }
}
