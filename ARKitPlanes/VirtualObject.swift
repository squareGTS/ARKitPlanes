//
//  VirtualObject.swift
//  ARKitPlanes
//
//  Created by Maxim Bekmetov on 07.03.2021.
//

import Foundation
import SceneKit

class VirtualObject: SCNReferenceNode {
    
    static let availableObjects: [SCNReferenceNode] = {
        
        guard let modelsURLs = Bundle.main.url(forResource: "art.scnassets", withExtension: "scn") else { return [] }
        
        let fileEnumerator = FileManager().enumerator(at: modelsURLs, includingPropertiesForKeys: nil)!
        
        return fileEnumerator.compactMap { element in
            let url = element as! URL
            
            guard url.pathExtension == "scn" else { return nil }
            
            return VirtualObject(url: url)
        }
    }()
}
