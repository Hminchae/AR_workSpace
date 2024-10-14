//
//  Coordinator.swift
//  HelloAR
//
//  Created by 황민채 on 10/14/24.
//

import Foundation
import ARKit
import RealityKit

class Coordinator: NSObject, ARSessionDelegate {
    
    weak var view: ARView?
    
    @objc func handleTap(_ recogizer: UITapGestureRecognizer) {
        
        
        guard let view = self.view else { return }
        
        let tapLocation = recogizer.location(in: view)
        if let entity = view.entity(at: tapLocation) as? ModelEntity {
            let material = SimpleMaterial(color: .random(), isMetallic: true)
            entity.model?.materials = [material]
        }
    }
}
