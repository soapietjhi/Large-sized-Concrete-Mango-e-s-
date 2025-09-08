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
        VStack {
            NavigationStack {
                NavigationLink {
                    potatoView(totalSmoothies: $totalSmoothies)
                } label: {
                    Label ("", systemImage: "plus.circle")
                        .font(.system(size:50))
                    Text("Make New Smoothies!")
                        .font(.system(size: 25))
                }
                Text("You made \(totalSmoothies) smoothies! Good job!")
                    .font(.system(size: 30))
                    .padding()
            }
        }
    }
}

#Preview {
    Gallery()
}
