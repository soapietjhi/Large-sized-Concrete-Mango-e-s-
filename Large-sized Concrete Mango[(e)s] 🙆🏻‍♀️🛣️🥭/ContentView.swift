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
                
                Tab("Inventory", systemImage: "basket.fill"){
                    Inventory()
                    
                }
                Tab("Gallery", systemImage: "mug.fill"){
                    Gallery()
                    
                }
            }
            .environmentObject(fruitsViewModel)
            
        
    }
}
    
#Preview {
    ContentView()
}
