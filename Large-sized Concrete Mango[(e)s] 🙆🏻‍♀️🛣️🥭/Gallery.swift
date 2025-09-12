//
//  Gallery.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Lian on 16/8/25.
//

import SwiftUI

struct Gallery: View {
    
    @AppStorage("totalSmoothies") var totalSmoothies: Int = 0
    var body: some View {
        NavigationStack {
            
            ZStack{
                Image ("Fruit2")
                
                VStack (spacing: 25) {
                    Text("You made \(totalSmoothies)")
                        .font(.system(size: 50))
                        .bold()
                        .multilineTextAlignment(.center)
                        .glowBorder(color: .white, lineWidth: 10)
                        
                        
                    Text ("smoothies!")
                        .font(.system(size: 50))
                        .bold()
                        .multilineTextAlignment(.center)
                        .glowBorder(color: .white, lineWidth: 10)
                        
                    
                    
                    NavigationLink {
                        potatoView(totalSmoothies: $totalSmoothies)
                    } label: {
                        Label ("", systemImage: "plus")
                            .font(.system(size:35))
                            .foregroundStyle(.white)
                        Text("New smoothies")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                    }
                    .padding()
                    .background(.teal)
                    .cornerRadius(10)
                    
                }
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 500, height: 200)
                    .position(x: 200,y: 900)
            }
        }
    }
}

#Preview {
    Gallery()
}
