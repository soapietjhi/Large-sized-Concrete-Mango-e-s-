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
            Text("🍎: \(fruitsViewModel.numberofapples)")
                .font(.largeTitle)
            Text("🍌: \(fruitsViewModel.numberofbananas)")
                .font(.largeTitle)
            Text("🍓: \(fruitsViewModel.numberofstrawberries)")
                .font(.largeTitle)
            Text("🥭: \(fruitsViewModel.numberofmangoes)")
                .font(.largeTitle)
            Text("🫐: \(fruitsViewModel.numberofblueberries)")
                .font(.largeTitle)
            Text("🍑: \(fruitsViewModel.numberofpeaches)")
                .font(.largeTitle)
            NavigationLink{
                carrotView()
            } label: {
                Text("Collect more fruits 🍎")
            }
            .padding()
            .foregroundColor(.black)
            .background(Color.yellow)
            .cornerRadius(10)
        }
    }
}

#Preview {
    Inventory()
        .environment(FruitsViewModel())
}
