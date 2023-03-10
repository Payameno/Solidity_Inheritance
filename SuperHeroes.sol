// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "./Hero.sol";

contract Mage is Hero(50) {

  function attack(address _enemyAddress) public override {

    //Instantiating the enemy contract
    Enemy enemy = Enemy(_enemyAddress);

    enemy.takeAttack(Hero.AttackTypes.Spell);
    //implements the function in the parent class
    super.attack(_enemyAddress);

  }

}

contract Warrior is Hero(200) {

    function attack(address _enemyAddress) public override {

      Enemy enemy = Enemy(_enemyAddress);

      enemy.takeAttack(Hero.AttackTypes.Brawl);
      super.attack(_enemyAddress);

  }

}