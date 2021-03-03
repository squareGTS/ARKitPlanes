//
//  Box.swift
//  ARKitPlanes
//
//  Created by Maxim Bekmetov on 03.03.2021.
//

import ARKit
import SceneKit

class Box: SCNNode {
    init(atPosition position: SCNVector3) {
        super.init()
        
        let boxGeometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        
        let materiaal = SCNMaterial()
        materiaal.diffuse.contents = UIColor.green
        
        boxGeometry.materials = [materiaal]
        
        self.geometry = boxGeometry
        let physicsShape = SCNPhysicsShape(geometry: self.geometry!, options: nil)
        self.physicsBody = SCNPhysicsBody(type: .static, shape: physicsShape)
        
        self.position = position
        
        self.transform = SCNMatrix4MakeRotation(Float(-Double.pi / 2), 1.0, 0.0, 0.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
    }
}
