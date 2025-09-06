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
    
    @Environment(FruitsViewModel.self) var fruitsViewModel
    
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
            for _ in 1...10 {
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
        .onChange(of: poseViewModel.detectedBodyParts[.leftWrist]) { _, newValue in
            if let newValue {
                calculateDistance(handCoordinates: newValue)
            }
        }
// 1. when arm moves :)
        // 2. calculate distance for each fruit :)
        // 3. if within acceptable range, collect fruit, else nothing
    }
    
    func calculateDistance(handCoordinates: CGPoint) {
        for fruit in fruitsAppearing {
            let fruitx = deviceWidth * fruit.positionx
            let fruity = deviceHeight * fruit.positiony
            
            let handx = handCoordinates.x * deviceWidth
            let handy = handCoordinates.y * deviceHeight
            
            let base = abs(handx - fruitx)
            let height = abs(handy - fruity)
            let distance = sqrt(base*base + height*height)
            
            if distance <= 100 {
                if fruit.emoji == "🍎" {
                    fruitsViewModel.numberofapples += 1
                } else if fruit.emoji == "🍌" {
                    fruitsViewModel.numberofbananas += 1
                } else if fruit.emoji == "🍓" {
                    fruitsViewModel.numberofstrawberries += 1
                } else if fruit.emoji == "🥭" {
                    fruitsViewModel.numberofmangoes += 1
                } else if fruit.emoji == "🫐" {
                    fruitsViewModel.numberofblueberries += 1
                } else if fruit.emoji == "🍑" {
                    fruitsViewModel.numberofpeaches += 1
                }
                
                
                fruitsAppearing.removeAll(where: {$0.id == fruit.id})
            }
        }
    }
}

#Preview {
    FruitoverlayView()
        .environment(PoseEstimationViewModel())
        .environment(FruitsViewModel())

}
