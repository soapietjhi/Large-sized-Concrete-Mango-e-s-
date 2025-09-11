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
                VStack (spacing: 15) {
                Text("What I have in my inventory?")
                    .font(.system(size: 35))
                    
                NavigationLink{
                    carrotView()
                } label: {
                    Text("Collect more fruits")
                }
                .padding()
                .font(.system(size: 27))
                .foregroundColor(.white)
                .frame(maxWidth: .maximum(300, 10))
                .background(Color.blue)
                .cornerRadius(10)
                HStack (spacing: 30) {
                    VStack (spacing: 20){
                        Text("🍎")
                            .font(.system(size: 50))
                        Text("🍌")
                            .font(.system(size: 50))
                        Text("🍓")
                            .font(.system(size: 50))
                        Text("🥭")
                            .font(.system(size: 50))
                        Text("🫐")
                            .font(.system(size: 50))
                        Text("🍑")
                            .font(.system(size: 50))
                    }
                    VStack (spacing: 37){
                        Text("Apple")
                            .font(.system(size: 35))
                        Text("Banana")
                            .font(.system(size: 35))
                        Text("Strawberry")
                            .font(.system(size: 35))
                        Text("Mango")
                            .font(.system(size: 35))
                        Text("Blueberry")
                            .font(.system(size: 35))
                        Text("Peach")
                            .font(.system(size: 35))
                    }
                    VStack (spacing: 30) {
                        Text("\(fruitsViewModel.numberofapples)")
                            .font(.system(size: 40))
                        Text("\(fruitsViewModel.numberofbananas)")
                            .font(.system(size: 40))
                        Text("\(fruitsViewModel.numberofstrawberries)")
                            .font(.system(size: 40))
                        Text("\(fruitsViewModel.numberofmangoes)")
                            .font(.system(size: 40))
                        Text("\(fruitsViewModel.numberofblueberries)")
                            .font(.system(size: 40))
                        Text("\(fruitsViewModel.numberofpeaches)")
                            .font(.system(size: 40))
                        
                    }
                    
                }
                .frame(maxWidth: .maximum(340, 100))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            }
        }
    }
}

#Preview {
    Inventory()
        .environmentObject(FruitsViewModel())
}

