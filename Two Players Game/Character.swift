//
//  Character.swift
//  Two Players Game
//
//  Created by OSX on 27.01.2017.
//  Copyright © 2017 OSX. All rights reserved.
//

import Foundation

class Character{
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var hp: Int {
        get{
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    var isAlive: Bool {
        get{
            if (hp <= 0) {
                return true
            }
            else{
                return false
            }
        }
    }
    
    init(startingHp: Int, attackPwr: Int){
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
}
