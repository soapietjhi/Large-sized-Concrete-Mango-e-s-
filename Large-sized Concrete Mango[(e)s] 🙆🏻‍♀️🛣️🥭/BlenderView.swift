//
//  BlenderView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 6/9/25.
//

import SwiftUI

enum BlenderStates {
    case zero, twentyfive, fifty, seventyfive, hundred
}

struct BlenderView: View {
    
    @Binding var totalSmoothies: Int
    @State private var downloadAmount = 0.0
  
    @State var BlenderState = BlenderStates.zero
    
    var body: some View {
        
        VStack {
            ProgressView("Blending…", value: downloadAmount, total: 100)
                .padding(50)
                .font(.system(size: 30))
            
            switch BlenderState {
            case .zero:
               Image("zero")
                       .resizable()
                       .scaledToFit()
            case .twentyfive:
                   Image("twentyfive")
                       .resizable()
                       .scaledToFit()
            case .fifty:
                   Image("fifty")
                       .resizable()
                       .scaledToFit()
            case .seventyfive:
                   Image("seventyfive")
                       .resizable()
                       .scaledToFit()
            case .hundred:
                   Image("hundred")
                       .resizable()
                       .scaledToFit()
            }
            if BlenderState != .hundred {
                Button("Click to Blend!") {
                    downloadAmount += 25
                    if BlenderState == .zero {
                        BlenderState = .twentyfive
                    }
                    else if BlenderState == .twentyfive {
                        BlenderState = .fifty
                    }
                    else if BlenderState == .fifty {
                        BlenderState = .seventyfive
                    }
                    else if BlenderState == .seventyfive {
                        BlenderState = .hundred
                        totalSmoothies += 1
                    }
                }
                .padding(40)
                .font(.system(size: 35))
            }
            
            if BlenderState == .hundred {
                Text("🍓 Good job! 🍊")
                    .font(.system(size: 35))
            }
                
        }
    }
}



#Preview {
    BlenderView(totalSmoothies: .constant(0))
}
