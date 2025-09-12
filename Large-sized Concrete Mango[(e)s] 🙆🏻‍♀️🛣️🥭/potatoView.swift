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
                    Text("Click on the text to select ")
                        .font(.system(size: 30))
                        .bold()
                       
                        
                        
                    Text(" fruits for your smoothie.")
                        .font(.system(size: 30))
                        .bold()
                    
                        
                    
                    HStack (spacing: 30) {
                        VStack (spacing: 23){
                            Text ("🍎")
                                .font(.system(size: 50))
                            Text ("🍌")
                                .font(.system(size: 50))
                            Text ("🍓")
                                .font(.system(size: 50))
                            Text ("🥭")
                                .font(.system(size: 50))
                            Text ("🫐")
                                .font(.system(size: 50))
                            Text ("🍑")
                                .font(.system(size: 50))
                        }
                        VStack(spacing: 40) {
                            Button("Apple            \(fruitsViewModel.numberofapples)"){
                                if fruitsViewModel.numberofapples != 0 {
                                    fruitsViewModel.numberofapples -= 1
                                    Next = true
                                }
                                else {
                                    showAlert = true
                                }
                            }
                            .font(.system(size: 35))
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
                            .font(.system(size: 35))
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
                            .font(.system(size: 35))
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
                            .font(.system(size: 35))
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
                            .font(.system(size: 35))
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
                            .font(.system(size: 35))
                            .foregroundStyle(.primary)
                        }
                    }
                    .frame(maxWidth: .maximum(330, 100))
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    
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
    }
}

#Preview {
    potatoView(totalSmoothies: .constant(0))
        .environmentObject(FruitsViewModel())
}
