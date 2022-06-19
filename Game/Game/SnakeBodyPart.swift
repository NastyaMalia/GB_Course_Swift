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
        path = UIBezierPath(ovalIn: CGRect(x:0, y:0, width: diametr, height: diametr))
        fillColor = .green
        
    }
}

