//
//  Plane.swift
//  lab-ice-1
//
//  Created by Nirav Goswami on 2023-01-18.
//

import SpriteKit
import GameplayKit

class Plane: GameObject
{
    init() {
        super.init(imageString: "plane", initalScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds() {
        if(position.x <= -310){
            position.x = -310
        }
        
        if(position.y > 310){
            position.x = 310
        }
    }
    
    override func Start() {
        zPosition = 2
    }
    
    override func Update() {
        CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint){
        position = newPos
        
    }
}
