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
        
        let text = ModelEntity(mesh: MeshResource.generateText("Hello AR",
                                                               extrusionDepth: 0.03,
                                                               font: .systemFont(ofSize: 0.2),
                                                               containerFrame: .zero,
                                                               alignment: .center,
                                                               lineBreakMode: .byCharWrapping),
                               materials: [SimpleMaterial(color: .blue, isMetallic: true)])
        
        anchor.addChild(text)
        arView.scene.anchors.append(anchor)

        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
