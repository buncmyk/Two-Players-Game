//
//  Player.swift
//  Two Players Game
//
//  Created by OSX on 27.01.2017.
//  Copyright © 2017 OSX. All rights reserved.
//

import Foundation

class Player: Character{
    
    private var _name: String = "Player"
    
    var name: String {
        get{
            return self._name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String]{
        get{
            return _inventory
        }
    }
    
    func addItemToInventory(item: String){
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int){
        self.init(startingHp: hp, attackPwr: attackPwr)
        _name = name
    }
}
