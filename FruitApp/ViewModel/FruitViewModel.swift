//
//  FruitViewModel.swift
//  FruitApp
//
//  Created by Amby on 17/10/2022.
//

import Foundation
import SwiftUI

class FruitViewModel: ObservableObject {
    @Published var index = 0

    @Published var width = UIScreen.main.bounds.width

    @Published var fruitsData:[FruitModel] = [
        FruitModel(name: "Breaking Banana", price: "Ksh 50/Dozen", content: "Banana are hig in potassium and contain goog levels of protein and dietray fiber.One medium-sized banana contains 422 milligrams of potassium", calories: "89", expand:[ "0.3 g", "23 g", "1.1 g"], color: Color("bananaColor"), image: "banana"),

        FruitModel(name: "Amazing Avocado", price: "ksh 25/Kg", content: "Acocado contributes nearly 20 vitamins and minerals, making it a great nutrient-dense food choice. It also contains heart-healthy monounsaturated fat - good data", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("avocadoColor"), image: "avocado"),

        FruitModel(name: "Apple Fruit", price: "ksh 65/Kg", content: "Apples are considered nutrient-dense fruits, meaning they provide a lot of nutrients per serving.", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("appleColor"), image: "apple"),

        FruitModel(name: "Plum Fruit", price: "ksh 45/Kg", content: "Plums may have been one of the first fruits domesticated by humans.[2] Three of the most abundantly cultivated species are not found in the wild, only around human settlements", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("plumColor"), image: "plum"),

        FruitModel(name: "Egg Plant", price: "ksh 35/Kg", content: "Eggplants are fruits due to the way they grow. Fruits develop from the flower of a plant and contain seeds, whereas vegetables are any other part of the plant: roots, stems, or leaves. Eggplants belong to the nightshade family, which includes tomatoes and potatoes", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("eggplantColor"), image: "eggplant")

    ]
}
