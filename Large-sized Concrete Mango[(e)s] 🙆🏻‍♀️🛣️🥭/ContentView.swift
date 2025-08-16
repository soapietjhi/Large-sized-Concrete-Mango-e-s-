//
//  ContentView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var cameraViewModel = CameraViewModel()
    @State private var poseViewModel = PoseEstimationViewModel()
    
    var body: some View {
        TabView {
            Tab("Gallery", systemImage: "mug.fill"){
                Gallery()
            }
        }
        
        TabView {
            Tab("Inventory", systemImage: "basket.fill"){
                Inventory()
            }
        }
        
        ZStack {
            // 2a.
            CameraPreviewView(session: cameraViewModel.session)
                .edgesIgnoringSafeArea(.all)
            // 2b.
            PoseOverlayView(
                bodyParts: poseViewModel.detectedBodyParts,
                connections: poseViewModel.bodyConnections
            )
        }
        .task {
            await cameraViewModel.checkPermission()
            cameraViewModel.delegate = poseViewModel
        }
    }
}


#Preview {
    ContentView()
}
