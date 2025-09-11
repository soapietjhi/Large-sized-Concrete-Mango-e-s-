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
    @State var showAlert = false
    @State var Next = false
    var body: some View {
        NavigationStack {
        
            VStack {
                Text("Select as many fruits as you want for your smoothie.")
                    .font(.system(size: 40))
                    .padding(40)
            }
            VStack(spacing: 40) {
                HStack(spacing: 30) {
                    Button("🍎: \(fruitsViewModel.numberofapples)"){
                        
                        if fruitsViewModel.numberofapples != 0 {
                            fruitsViewModel.numberofapples -= 1
                            Next = true
                        }
                        else {
                           showAlert = true
                        }
                        
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.primary)
                    Button("🍌: \(fruitsViewModel.numberofbananas)"){
                        if fruitsViewModel.numberofbananas != 0 {
                            fruitsViewModel.numberofbananas -= 1
                            Next = true
                        }
                        else {
                           showAlert = true
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.primary)
                }
                HStack(spacing: 30) {
                    Button("🍓: \(fruitsViewModel.numberofstrawberries)"){
                        if fruitsViewModel.numberofstrawberries != 0 {
                            fruitsViewModel.numberofstrawberries -= 1
                            Next = true
                        }
                        else {
                           showAlert = true
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.primary)
                    Button("🥭: \(fruitsViewModel.numberofmangoes)") {
                        if fruitsViewModel.numberofmangoes != 0 {
                            fruitsViewModel.numberofmangoes -= 1
                            Next = true
                        }
                        else {
                           showAlert = true
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.primary)
                }
                HStack(spacing: 30) {
                    Button("🫐: \(fruitsViewModel.numberofblueberries)") {
                        if fruitsViewModel.numberofblueberries != 0 {
                            fruitsViewModel.numberofblueberries -= 1
                            Next = true
                        }
                        else {
                           showAlert = true
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.primary)
                    Button("🍑: \(fruitsViewModel.numberofpeaches)"){
                        if fruitsViewModel.numberofpeaches != 0 {
                            fruitsViewModel.numberofpeaches -= 1
                            Next = true
                        }
                        else {
                           showAlert = true
                        }
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.primary)
                }
            }
            
            if Next == true {
                NavigationLink {
                    BlenderView(totalSmoothies: $totalSmoothies)
                } label: {
                    Text("Next")
                        .font(.largeTitle)
                        .frame(width: 300, height: 100, alignment: .bottomTrailing)
                }
            }
        }
        .alert("You do not have enough of this fruit to make a Smoothie with it", isPresented: $showAlert) {
            Button("Ok", role: .cancel) {}
        }
    }
}

#Preview {
    potatoView(totalSmoothies: .constant(0))
        .environmentObject(FruitsViewModel())
}
