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
    
    let fruits = ["🍎","🍌","🍓", "🥭", "🫐", "🍑"]
    @State var fruitsAppearing: [Fruitoverlays] = []
    @State var deviceWidth: Double = 0
    @State var deviceHeight: Double = 0
    
    @Environment(PoseEstimationViewModel.self) var poseViewModel
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                ForEach(fruitsAppearing, id: \.id){ fruit in
                    Text(fruit.emoji)
                        .font(.largeTitle)
                        .position(x: geometry.size.width * fruit.positionx, y: geometry.size.height * fruit.positiony)
                }
                .onAppear {
                    deviceWidth = geometry.size.width
                    deviceHeight = geometry.size.height
                }
            }
        }
        .padding(30)
        .onAppear {
            for _ in 1...1 {
                if let randomfruit = fruits.randomElement() {
                    let positionx = Double.random(in: 0...1)
                    let positiony = Double.random(in: 0...1)
                    fruitsAppearing.append (Fruitoverlays(emoji: randomfruit, positionx: positionx, positiony: positiony))
                }
            }
        }
        .onChange(of: poseViewModel.detectedBodyParts[.rightWrist]) { _, newValue in
            if let newValue {
                calculateDistance(handCoordinates: newValue)
            }
        }
//        .onChange(of: poseViewModel.detectedBodyParts[.leftWrist]) { _, newValue in
//            if let newValue {
//                calculateDistance(handCoordinates: newValue)
//            }
//        }
// 1. when arm moves :)
        // 2. calculate distance for each fruit :)
        // 3. if within acceptable range, collect fruit, else nothing
    }
    
    func calculateDistance(handCoordinates: CGPoint) {
        for fruit in fruitsAppearing {
            let fruitx = deviceWidth * fruit.positionx
            let fruity = deviceHeight * fruit.positiony
            
            let handx = handCoordinates.x
            let handy = handCoordinates.y
            
            let a = abs(fruitx) + abs(handx)
            let b = abs(fruity) + abs(handy)
            let c = sqrt(a*a + b*b)
            print(c)
        }
    }
}

#Preview {
    FruitoverlayView()
}
