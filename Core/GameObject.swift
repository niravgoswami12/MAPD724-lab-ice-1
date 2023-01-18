//
//  GameObject.swift
//  lab-ice-1
//
//  Created by Nirav Goswami on 2023-01-18.
//

import GameplayKit
import SpriteKit

class GameObject : SKSpriteNode, GameProtocol
{
    var horizontalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var isCollding: Bool?
    var ransdonSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    // Constructor / initializer
    init(imageString: String, initalScale: CGFloat){
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        scale = initalScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        isCollding = false
        name = imageString
        ransdonSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func CheckBounds() {
        
    }
    
    func Reset() {
        
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
    
    
    
}
