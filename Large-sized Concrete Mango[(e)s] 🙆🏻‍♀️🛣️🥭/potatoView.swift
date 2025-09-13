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
            
            ZStack{
                Image("Fruit")
                
                VStack {
                    Text("Click on the text to select fruits for your smoothie.")
                        .font(.system(size: 30))
                        .bold()
                        .padding(.horizontal, 60)
                        .glowBorder(color: .white, lineWidth: 8)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.black)
                    
                    
                    
                    
                    HStack (spacing: 30) {
                        VStack (spacing: 23){
                            Text ("🍎")
                                .font(.largeTitle)
                            Text ("🍌")
                                .font(.largeTitle)
                            Text ("🍓")
                                .font(.largeTitle)
                            Text ("🥭")
                                .font(.largeTitle)
                            Text ("🫐")
                                .font(.largeTitle)
                            Text ("🍑")
                                .font(.largeTitle)
                        }
                        VStack(spacing: 31) {
                            Button("Apple            \(fruitsViewModel.numberofapples)"){
                                if fruitsViewModel.numberofapples != 0 {
                                    fruitsViewModel.numberofapples -= 1
                                    Next = true
                                }
                                else {
                                    showAlert = true
                                }
                            }
                            .font(.title)
                            .foregroundStyle(.primary)
                            Button("Banana         \(fruitsViewModel.numberofbananas)"){
                                if fruitsViewModel.numberofbananas != 0 {
                                    fruitsViewModel.numberofbananas -= 1
                                    Next = true
                                }
                                else {
                                    showAlert = true
                                }
                            }
                            .font(.title)
                            .foregroundStyle(.primary)
                            
                            Button("Strawberry  \(fruitsViewModel.numberofstrawberries)"){
                                if fruitsViewModel.numberofstrawberries != 0 {
                                    fruitsViewModel.numberofstrawberries -= 1
                                    Next = true
                                }
                                else {
                                    showAlert = true
                                }
                            }
                            .font(.title)
                            .foregroundStyle(.primary)
                            Button("Mango          \(fruitsViewModel.numberofmangoes)") {
                                if fruitsViewModel.numberofmangoes != 0 {
                                    fruitsViewModel.numberofmangoes -= 1
                                    Next = true
                                }
                                else {
                                    showAlert = true
                                }
                            }
                            .font(.title)
                            .foregroundStyle(.primary)
                            Button("Blueberry    \(fruitsViewModel.numberofblueberries)") {
                                if fruitsViewModel.numberofblueberries != 0 {
                                    fruitsViewModel.numberofblueberries -= 1
                                    Next = true
                                }
                                else {
                                    showAlert = true
                                }
                            }
                            .font(.title)
                            .foregroundStyle(.primary)
                            Button("Peach          \(fruitsViewModel.numberofpeaches)"){
                                if fruitsViewModel.numberofpeaches != 0 {
                                    fruitsViewModel.numberofpeaches -= 1
                                    Next = true
                                }
                                else {
                                    showAlert = true
                                }
                            }
                            .font(.title)
                            .foregroundStyle(.primary)
                        }
                    }
                    .frame(maxWidth: .maximum(300, 100))
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    
                    
                    if Next == true {
                        NavigationLink {
                            BlenderView(totalSmoothies: $totalSmoothies)
                        } label: {
                            Text("Next")
                                .font(.largeTitle)
                                .foregroundStyle(.black)
                        }
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 500, height: 25)
                    } else{
                        Spacer().frame(height: 25)
                    }

                }
                .alert("You do not have enough of this fruit to make a Smoothie with it", isPresented: $showAlert) {
                    Button("Ok", role: .cancel) {}
                }
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 500, height: 200)
                    .position(x: 200,y: 880)
            }
        }
    }
}

#Preview {
    potatoView(totalSmoothies: .constant(0))
        .environmentObject(FruitsViewModel())
}
