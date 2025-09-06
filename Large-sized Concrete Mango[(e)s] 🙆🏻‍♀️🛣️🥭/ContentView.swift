//
//  ContentView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var fruitsViewModel = FruitsViewModel()
    
    var body: some View {
        TabView {
            Tab("Gallery", systemImage: "mug.fill"){
                Gallery()
            }
            
            Tab("Inventory", systemImage: "basket.fill"){
                Inventory()
            }
        }
        .environment(fruitsViewModel)
        
    }
}

#Preview {
    ContentView()
}
