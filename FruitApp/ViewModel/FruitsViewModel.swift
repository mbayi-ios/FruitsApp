//
//  FruitsViewModel.swift
//  FruitApp
//
//  Created by Amby on 17/10/2022.
//

import Foundation
import SwiftUI

class FruitsViewModel: ObservableObject {

    @Published var fruitsData: [FruitModel] = [
        FruitModel(id: UUID(), name: "Breaking Banana", price: "Ksh 50/Dozen", content: "Banana are hig in potassium and contain goog levels of protein and dietray fiber.One medium-sized banana contains 422 milligrams of potassium", calories: "89", expand:[ "0.3 g", "23 g", "1.1 g"], color: Color("bananaColor"), image: "banana"),

        FruitModel(id: UUID(), name: "Amazing Avocado", price: "ksh 25/Kg", content: "Acocado contributes nearly 20 vitamins and minerals, making it a great nutrient-dense food choice. It also contains heart-healthy monounsaturated fat - good data", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("avocadoColor"), image: "avocado"),

        FruitModel(id: UUID(), name: "Apple", price: "Ksh 25/Kg", content: "They’re rich in both soluble and insoluble fiber, such as pectin, hemicellulose, and cellulose. These help you manage your blood sugar levels, promote good digestion, and support gut and heart health", calories: "170", expand: ["15 g", "9 g", "2 g"], color: Color("appleColor"), image: "apple")
        ]
}
