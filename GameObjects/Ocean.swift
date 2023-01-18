//
//  Ocean.swift
//  lab-ice-1
//
//  Created by Nirav Goswami on 2023-01-18.
//

import SpriteKit
import GameplayKit


class Ocean: GameObject
{
    init(){
        super.init(imageString: "ocean", initalScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds() {
        if(position.y <= -773){
            Reset()
        }
    }
    
    override func Reset() {
        position.y = 773
    }
    
    override func Start() {
        zPosition = 0
        verticalSpeed = 5.0
        
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    func Move(){
        position.y -= verticalSpeed!
    }
}
