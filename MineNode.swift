//
//  MineNode.swift
//  ThrowMine
//
//  Created by Tyler Mullins on 2/2/15.
//  Copyright (c) 2015 Tyler Mullins. All rights reserved.
//

import Foundation
import SpriteKit

class MineNode: SKSpriteNode {
    
    class func mineAtPos(position: CGPoint) -> MineNode {
        let mine = MineNode(color: SKColor.redColor(), size: CGSize(width: 10, height: 10))
        mine.position = position
        return mine
    }
    
}

