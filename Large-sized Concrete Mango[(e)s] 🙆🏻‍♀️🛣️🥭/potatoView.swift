//
//  potatoView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 16/8/25.
//

import SwiftUI

struct potatoView: View {
    @Environment(FruitsViewModel.self) var fruitsViewModel
    var body: some View {
        VStack(spacing: 40) {
            HStack(spacing: 30) {
                Text("🍎: \(fruitsViewModel.numberofapples)")
                    .font(.system(size: 50))
                Text("🍌: \(fruitsViewModel.numberofbananas)")
                    .font(.system(size: 50))
            }
            HStack(spacing: 30) {
                Text("🍓: \(fruitsViewModel.numberofstrawberries)")
                    .font(.system(size: 50))
                Text("🥭: \(fruitsViewModel.numberofmangoes)")
                    .font(.system(size: 50))
            }
            HStack(spacing: 30) {
                Text("🫐: \(fruitsViewModel.numberofblueberries)")
                    .font(.system(size: 50))
                Text("🍑: \(fruitsViewModel.numberofpeaches)")
                    .font(.system(size: 50))
            }
        }
    }
}

#Preview {
    potatoView()
        .environment(FruitsViewModel())
}
