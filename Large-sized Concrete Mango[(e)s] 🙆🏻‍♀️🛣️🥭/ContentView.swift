//
//  ContentView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 16/8/25.
//

import SwiftUI

struct ContentView: View {
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
    }
}

#Preview {
    ContentView()
}
