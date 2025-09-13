//
//  Inventory.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Lian on 16/8/25.
//

import SwiftUI

struct Inventory: View {
    @EnvironmentObject var fruitsViewModel: FruitsViewModel
    var body: some View {
            NavigationStack {
                
                ZStack{

                    Image("Fruit")
                        
                    VStack {
                        Text("Inventory")
                            .font(.largeTitle)
                            .bold()
                            .glowBorder(color: .white, lineWidth: 8)
                            .padding()
                            .foregroundStyle(.black)
                            
                        
                        
                        NavigationLink{
                            carrotView()
                        } label: {
                            Text("Collect more fruits")
                        }
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(maxWidth: .maximum(300, 10))
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        
                        
                        HStack (spacing: 30) {
                            VStack (spacing: 30){
                                Text("🍎")
                                    .font(.largeTitle)
                                Text("🍌")
                                    .font(.largeTitle)
                                Text("🍓")
                                    .font(.largeTitle)
                                Text("🥭")
                                    .font(.largeTitle)
                                Text("🫐")
                                    .font(.largeTitle)
                                Text("🍑")
                                    .font(.largeTitle)
                            }
                            VStack (spacing: 37){
                                Text("Apple")
                                    .font(.title)
                                Text("Banana")
                                    .font(.title)
                                Text("Strawberry")
                                    .font(.title)
                                Text("Mango")
                                    .font(.title)
                                Text("Blueberry")
                                    .font(.title)
                                Text("Peach")
                                    .font(.title)
                            }
                            VStack (spacing: 37) {
                                Text("\(fruitsViewModel.numberofapples)")
                                    .font(.title)
                                Text("\(fruitsViewModel.numberofbananas)")
                                    .font(.title)
                                Text("\(fruitsViewModel.numberofstrawberries)")
                                    .font(.title)
                                Text("\(fruitsViewModel.numberofmangoes)")
                                    .font(.title)
                                Text("\(fruitsViewModel.numberofblueberries)")
                                    .font(.title)
                                Text("\(fruitsViewModel.numberofpeaches)")
                                    .font(.title)
                                
                            }
                            
                        }
                        .padding(8)
                        .frame(maxWidth: 320)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        .padding()
                        
                        
                       
                            
                    }
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 500, height: 200)
                        .position(x: 200,y: 900)
                }
        }
    }
}

#Preview {
    Inventory()
        .environmentObject(FruitsViewModel())
}

