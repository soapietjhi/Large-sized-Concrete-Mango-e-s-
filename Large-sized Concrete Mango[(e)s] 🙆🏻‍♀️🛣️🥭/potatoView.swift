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
                    .foregroundStyle(.black)
                    Button("🍌: \(fruitsViewModel.numberofbananas)"){
                        print("hi")
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                }
                HStack(spacing: 30) {
                    Button("🍓: \(fruitsViewModel.numberofstrawberries)"){
                        print("hi")
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                    Button("🥭: \(fruitsViewModel.numberofmangoes)") {
                        print("hi")
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                }
                HStack(spacing: 30) {
                    Button("🫐: \(fruitsViewModel.numberofblueberries)") {
                        print("hi")
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                    Button("🍑: \(fruitsViewModel.numberofpeaches)"){
                        print("hi")
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                }
            }
            NavigationLink {
                BlenderView()
            } label: {
                Text("Next")
                    .font(.largeTitle)
                    .frame(width: 300, height: 100, alignment: .bottomLeading, .rightLeading)
            }
        }
    }
}

#Preview {
    potatoView()
        .environment(FruitsViewModel())
}
