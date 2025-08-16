//
//  Gallery.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Lian on 16/8/25.
//

import SwiftUI

struct Gallery: View {
    var body: some View {
        
        NavigationStack {
            NavigationLink {
                potatoView()
            } label: {
                Label ("", systemImage: "plus.circle")
                    .font(.largeTitle)
            }
            
        }
    }
}

#Preview {
    Gallery()
}
