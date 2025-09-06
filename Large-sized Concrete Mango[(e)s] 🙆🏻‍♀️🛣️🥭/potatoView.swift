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
        NavigationStack {
            VStack(spacing: 40) {
                HStack(spacing: 30) {
                    Button("🍎: \(fruitsViewModel.numberofapples)"){
                        print("hi")
                    }
                    .font(.system(size: 50))
                    Button("🍌: \(fruitsViewModel.numberofbananas)"){
                        print("hi")
                    }
                    .font(.system(size: 50))
                }
                HStack(spacing: 30) {
                    Button("🍓: \(fruitsViewModel.numberofstrawberries)"){
                        print("hi")
                    }
                    .font(.system(size: 50))
                    Button("🥭: \(fruitsViewModel.numberofmangoes)") {
                        print("hi")
                    }
                    .font(.system(size: 50))
                }
                HStack(spacing: 30) {
                    Button("🫐: \(fruitsViewModel.numberofblueberries)") {
                        print("hi")
                    }
                    .font(.system(size: 50))
                    Button("🍑: \(fruitsViewModel.numberofpeaches)"){
                        print("hi")
                    }
                    .font(.system(size: 50))
                }
            }
            NavigationLink {
                BlenderView()
            } label: {
                Text("Next")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    potatoView()
        .environment(FruitsViewModel())
}
