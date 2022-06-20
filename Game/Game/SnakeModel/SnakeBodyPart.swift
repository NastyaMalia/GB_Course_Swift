//
//  SnakeBodyPart.swift
//  Game
//
//  Created by Nastya Kazakova on 13.06.22.
//

import UIKit
import SpriteKit

class SnakeBobyPart: SKShapeNode{
    let diametr = 15
    
    init(atPoint point: CGPoint){
        super.init()
        
        path = UIBezierPath(ovalIn: CGRect(x:0, y:0, width: diametr, height: diametr)).cgPath
        fillColor = .green
        strokeColor = .green
        lineWidth = 5
        self.position = point
        
        self.physicsBody = SKPhysicsBody(circleOfRadius:CGFloat(diametr), center: CGPoint(x: 5, y: 5))
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = CollisionCatigory.Snake
        self.physicsBody?.contactTestBitMask = CollisionCatigory.EdgeBody | CollisionCatigory.Apple

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

