//
//  MineThrowerNode.swift
//  ThrowMine
//
//  Created by Tyler Mullins on 2/2/15.
//  Copyright (c) 2015 Tyler Mullins. All rights reserved.
//

import Foundation
import SpriteKit

class MineThrowerNode: SKSpriteNode {

   class func mineThrowerAtPos(position: CGPoint) -> MineThrowerNode {
        let mineThrower = MineThrowerNode(color: SKColor.blueColor(), size: CGSize(width: 30, height: 30))
        mineThrower.position = position
        mineThrower.name = "MineThrower"
        return mineThrower
    }
    


}
    


