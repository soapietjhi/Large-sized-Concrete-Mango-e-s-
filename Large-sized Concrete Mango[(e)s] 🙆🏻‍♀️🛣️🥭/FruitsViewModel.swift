//
//  FruitsViewModel.swift
//  Large-sized Concrete Mango[(e)s] 🙆🏻‍♀️🛣️🥭
//
//  Created by Sophie Tjhi on 6/9/25.
//

import SwiftUI

class FruitsViewModel: ObservableObject {
    @AppStorage("numberofapples") var numberofapples: Int = 0
    @AppStorage("numberofbananas") var numberofbananas: Int = 0
    @AppStorage("numberofstrawberries") var numberofstrawberries: Int = 0
    @AppStorage("numberofmangoes") var numberofmangoes: Int = 0
    @AppStorage("numberofblueberries") var numberofblueberries: Int = 0
    @AppStorage("numberofpeaches") var numberofpeaches: Int = 0
}

