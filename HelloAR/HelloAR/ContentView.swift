//
//  ContentView.swift
//  HelloAR
//
//  Created by 황민채 on 10/10/24.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        let anchor = AnchorEntity(plane: .horizontal)
        
        let material = SimpleMaterial(color: .blue, isMetallic: true)
        
        let box = ModelEntity(mesh: MeshResource.generateBox(size: 0.3), materials: [material])
        let sphere = ModelEntity(mesh: MeshResource.generateSphere(radius: 0.3), materials: [SimpleMaterial(color: .yellow, isMetallic: true)])
        let plane = ModelEntity(mesh: MeshResource.generatePlane(width: 0.9, depth: 0.9), materials: [SimpleMaterial(color: .red, isMetallic: true)])
        
        sphere.position = simd_make_float3(0, 0.3, 0)
        plane.position = simd_make_float3(0, 0.7, 0)
        
        anchor.addChild(box)
        anchor.addChild(sphere)
        anchor.addChild(plane)
        arView.scene.anchors.append(anchor)

        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
