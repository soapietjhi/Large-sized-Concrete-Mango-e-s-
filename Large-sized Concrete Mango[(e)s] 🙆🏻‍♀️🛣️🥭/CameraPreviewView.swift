//
//  CameraPreviewView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 16/8/25.
//

import SwiftUI
import UIKit
import AVFoundation

struct CameraPreviewView: UIViewRepresentable {

    // 1.
    let session: AVCaptureSession
    
    // 2.
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
        
        previewLayer.videoGravity = .resizeAspectFill
        previewLayer.frame = view.bounds
        previewLayer.connection?.videoRotationAngle = 90
        view.layer.addSublayer(previewLayer)
        
        return view
    }
    
    // 3.
    func updateUIView(_ uiView: UIView, context: Context) {
        Task {
            if let previewLayer = uiView.layer.sublayers?.first as? AVCaptureVideoPreviewLayer {
                previewLayer.frame = uiView.bounds
            }
        }
    }
}
