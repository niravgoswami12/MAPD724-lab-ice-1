//
//  GameScene.swift
//  lab-ice-1
//
//  Created by Nirav Goswami on 2023-01-18.
//

import SpriteKit
import GameplayKit
import AVFoundation
import UIKit

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene {
    
    var ocean: Ocean?
    var plane: Plane?
    
    
    override func sceneDidLoad() {

        screenWidth = frame.width
        screenHeight = frame.height
        name = "GAME"
        
        ocean = Ocean()
        ocean?.position = CGPoint(x: 0, y: 773)
        addChild(ocean!)
        
        plane = Plane()
        plane?.position = CGPoint(x: 0, y: -495)
        addChild(plane!)
    }
    
    
    
    func touchDown(atPoint pos : CGPoint) {
        plane?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        plane?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchUp(atPoint pos : CGPoint) {
        plane?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
        ocean?.Update()
        plane?.Update()
        
    }
}
