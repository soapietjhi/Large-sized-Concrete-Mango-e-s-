//
//  Inventory.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Lian on 16/8/25.
//

import SwiftUI

struct Inventory: View {
    @Environment(FruitsViewModel.self) var fruitsViewModel
    var body: some View {
        NavigationStack {
            HStack (spacing: 40) {
                VStack (spacing: 40) {
                    Text("🍎: \(fruitsViewModel.numberofapples)")
                        .font(.system(size: 50))
                    Text("🍌: \(fruitsViewModel.numberofbananas)")
                        .font(.system(size: 50))
                    Text("🍓: \(fruitsViewModel.numberofstrawberries)")
                        .font(.system(size: 50))
                }
                VStack (spacing: 40) {
                    Text("🥭: \(fruitsViewModel.numberofmangoes)")
                        .font(.system(size: 50))
                    Text("🫐: \(fruitsViewModel.numberofblueberries)")
                        .font(.system(size: 50))
                    Text("🍑: \(fruitsViewModel.numberofpeaches)")
                        .font(.system(size: 50))
                }
            }
            NavigationLink{
                carrotView()
            } label: {
                Text("Collect more fruits 🍎")
            }
            .padding()
            .foregroundColor(.black)
            .background(Color.yellow)
            .cornerRadius(10)
            .font(.system(size: 30))
        }
    }
}

#Preview {
    Inventory()
        .environment(FruitsViewModel())
}
