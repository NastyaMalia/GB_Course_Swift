//
//  GameScene.swift
//  Game
//
//  Created by Nastya Kazakova on 13.06.22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
   
    override func didMove(to view: SKView) {
        
        backgroundColor = SKColor.black
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        self.physicsBody?.allowsRotation = false
        
        view.showsPhysics = true
        
        let counterClockwiseButton = SKShapeNode()
        counterClockwiseButton.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 45, height: 45)).cgPath
        counterClockwiseButton.position = CGPoint(x: view.scene!.frame.minX + 30, y: view.scene!.frame.minY + 30)
        counterClockwiseButton.fillColor = .gray
        counterClockwiseButton.strokeColor = .gray
        counterClockwiseButton.lineWidth = 10
        counterClockwiseButton.name = "counterClockwiseButton"
        self.addChild(counterClockwiseButton)
        
        
        let counterClockButton = SKShapeNode()
        counterClockButton.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 45, height: 45)).cgPath
        counterClockButton.position = CGPoint(x: view.scene!.frame.maxX - 80, y: view.scene!.frame.minY + 30)
        counterClockButton.fillColor = .gray
        counterClockButton.strokeColor = .gray
        counterClockButton.lineWidth = 10
        counterClockButton.name = "counterClockButton"
        self.addChild(counterClockButton)
        
        createApple()
        
        
        }
        
        // Create shape node to use during mouse interaction
     
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     
        for touch in touches {
            let touchLocation = touch.location(in: self)
            
            guard let touchNode = self.atPoint(touchLocation) as? SKShapeNode,
                  touchNode.name == "counterClockwiseButton" || touchNode.name == "counterClockButton" else{
                      return
                  }
            touchNode.fillColor = .green
        }
        
        }
        
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let touchLocation = touch.location(in: self)
            
            guard let touchNode = self.atPoint(touchLocation) as? SKShapeNode,
                  touchNode.name == "counterClockwiseButton" || touchNode.name == "counterClockButton" else{
                      return
                  }
            touchNode.fillColor = .gray
        }
     
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

extension GameScene {
    
    func createApple(){
        
        let randX = CGFloat(arc4random_uniform(UInt32(view!.scene!.frame.maxX-5)))
        let randY = CGFloat(arc4random_uniform(UInt32(view!.scene!.frame.maxY-5)))
        let apple = Apple(position: CGPoint(x: randX, y: randY))
        self.addChild(apple)
        
    }
    
}
