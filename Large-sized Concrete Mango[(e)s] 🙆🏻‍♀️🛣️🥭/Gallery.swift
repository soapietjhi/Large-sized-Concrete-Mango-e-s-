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
                        .offset(x: 0, y:60)
                        
                    Text ("smoothies!")
                        .font(.system(size: 50))
                        .bold()
                        .multilineTextAlignment(.center)
                        .glowBorder(color: .white, lineWidth: 10)
                        .offset(x: 0, y:50)
                    
                    
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
                    .offset(x: 0, y:80)
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 500, height: 200)
                        .frame(maxWidth: .infinity, alignment: .bottom)
                        .offset(x: 0, y:309)
                    
                }
            }
        }
    }
}

#Preview {
    Gallery()
}
