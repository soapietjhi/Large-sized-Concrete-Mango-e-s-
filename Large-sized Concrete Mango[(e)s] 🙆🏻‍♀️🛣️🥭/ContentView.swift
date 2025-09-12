//
//  ContentView.swift
//  Large-sized Concrete Mango[a(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var fruitsViewModel = FruitsViewModel()
    
    var body: some View {
        TabView {
            Inventory()
                .tabItem {
                    Label("Inventory", systemImage: "basket.fill")
                }
            
            Gallery()
                .tabItem {
                    Label("Gallery", systemImage: "mug.fill")
                }
        }
        .toolbarBackground(Color(uiColor: .white), for: .tabBar)
        .environmentObject(fruitsViewModel)
        
    }
}

#Preview {
    ContentView()
}
