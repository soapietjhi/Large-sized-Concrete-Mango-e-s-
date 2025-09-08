//
//  potatoView.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 16/8/25.
//

import SwiftUI

struct potatoView: View {
    @Binding var totalSmoothies: Int
    @EnvironmentObject var fruitsViewModel: FruitsViewModel
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                HStack(spacing: 30) {
                    Button("🍎: \(fruitsViewModel.numberofapples)"){
                        
                        if fruitsViewModel.numberofapples != 0 {
                            fruitsViewModel.numberofapples -= 1
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                    Button("🍌: \(fruitsViewModel.numberofbananas)"){
                        if fruitsViewModel.numberofbananas != 0 {
                            fruitsViewModel.numberofbananas -= 1
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                }
                HStack(spacing: 30) {
                    Button("🍓: \(fruitsViewModel.numberofstrawberries)"){
                        if fruitsViewModel.numberofstrawberries != 0 {
                            fruitsViewModel.numberofstrawberries -= 1
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                    Button("🥭: \(fruitsViewModel.numberofmangoes)") {
                        if fruitsViewModel.numberofmangoes != 0 {
                            fruitsViewModel.numberofmangoes -= 1
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                }
                HStack(spacing: 30) {
                    Button("🫐: \(fruitsViewModel.numberofblueberries)") {
                        if fruitsViewModel.numberofblueberries != 0 {
                            fruitsViewModel.numberofblueberries -= 1
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                    Button("🍑: \(fruitsViewModel.numberofpeaches)"){
                        if fruitsViewModel.numberofpeaches != 0 {
                            fruitsViewModel.numberofpeaches -= 1
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.black)
                }
            }
            
            NavigationLink {
                BlenderView(totalSmoothies: $totalSmoothies)
            } label: {
                Text("Next")
                    .font(.largeTitle)
                    .frame(width: 300, height: 100, alignment: .bottomTrailing)
            }
        }
    }
}

#Preview {
    potatoView(totalSmoothies: .constant(0))
        .environmentObject(FruitsViewModel())
}
