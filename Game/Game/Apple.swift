//
//  Apple.swift
//  Game
//
//  Created by Nastya Kazakova on 13.06.22.
//

import UIKit
import SpriteKit


class Apple: SKShapeNode {
    init (position: CGPoint){
        
        super.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        fillColor = .red
        strokeColor = .red
        lineWidth = 5
        
        self.position = position
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
