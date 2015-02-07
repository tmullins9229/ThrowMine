//
//  GameScene.swift
//  ThrowMine
//
//  Created by Tyler Mullins on 2/2/15.
//  Copyright (c) 2015 Tyler Mullins. All rights reserved.
//
import Foundation
import SpriteKit

class GameScene: SKScene {
    
    var timeOfLastMine = 0.0
    var gameStartTime = 0.0
    var totalGameTime = 0.0
    var lastUpdatesTime = 0.0
    var mineSpawnTimer = 1.5
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let hero = SKSpriteNode(color: SKColor.purpleColor(), size: CGSizeMake(30 , 30))
        let minethrower = MineThrowerNode.mineThrowerAtPos(CGPointMake(100, 100))
        self.addChild(minethrower)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */

        }
   

    override func update(currentTime: NSTimeInterval) {
        if self.gameStartTime == 0 {
            self.gameStartTime = currentTime
            self.timeOfLastMine = currentTime
            self.lastUpdatesTime = currentTime
        }
        self.totalGameTime += currentTime - lastUpdatesTime
        if currentTime - timeOfLastMine > mineSpawnTimer{
            
            let randomPositionX = CGFloat(arc4random_uniform(100))
            let randomPositionY = CGFloat(arc4random_uniform(500))
            let randomPos = CGPointMake(randomPositionX, randomPositionY)
            let mine = MineNode.mineAtPos(position: randomPos)
            self.addChild(mine)
            timeOfLastMine = currentTime
        }
    }
    
}
