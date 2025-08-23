//
//  FruitoverlayView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 23/8/25.
//

import SwiftUI

struct Fruitoverlays: Identifiable {
    let id = UUID()
    var emoji: String
    var positionx: Double
    var positiony: Double
}

struct FruitoverlayView: View {
    
    let fruits = ["🍎","🍌","🍓", "🥭", "🫐"]
    @State var fruitsAppearing: [Fruitoverlays] = []
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                ForEach(fruitsAppearing, id: \.id){ fruit in
                    Text(fruit.emoji)
                        .font(.largeTitle)
                        .position(x: geometry.size.width * fruit.positionx, y: geometry.size.height * fruit.positiony)
                }
            }
        }
        .padding(30)
        .onAppear {
            for _ in 1...10 {
                if let randomfruit = fruits.randomElement() {
                    let positionx = Double.random(in: 0...1)
                    let positiony = Double.random(in: 0...1)
                    fruitsAppearing.append (Fruitoverlays(emoji: randomfruit, positionx: positionx, positiony: positiony))
                }
            }
        }
        
        
    }
}

#Preview {
    FruitoverlayView()
}
