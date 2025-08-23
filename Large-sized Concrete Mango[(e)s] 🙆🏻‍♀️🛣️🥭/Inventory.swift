//
//  Inventory.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Lian on 16/8/25.
//

import SwiftUI

struct Inventory: View {
    var body: some View {
        VStack {
            NavigationStack {
                NavigationLink{
                    carrotView()
                } label: {
                    Text("Collect more fruits 🍎")
                }
                .padding()
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(10)
            }
            
        }
    }
}

#Preview {
    Inventory()
}
