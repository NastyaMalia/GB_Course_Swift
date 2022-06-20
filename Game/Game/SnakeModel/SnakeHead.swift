//
//  SnakeHead.swift
//  Game
//
//  Created by Nastya Kazakova on 20.06.22.
//

import UIKit

class SnakeHead: SnakeBobyPart{
    
    override init(atPoint point: CGPoint){
        super.init(atPoint: point)
        
        self.physicsBody?.categoryBitMask = CollisionCatigory.SnakeHead
        self.physicsBody?.contactTestBitMask = CollisionCatigory.EdgeBody | CollisionCatigory.Apple | CollisionCatigory.Snake

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
