//
//  ContentView.swift
//  FruitApp
//
//  Created by Amby on 17/10/2022.
//

import SwiftUI

struct Home: View {
    @State var width = UIScreen.main.bounds.width

    @State var data = [
        FruitModel(name: "Breaking Banana", price: "Ksh 50/Dozen", content: "Banana are hig in potassium and contain goog levels of protein and dietray fiber.One medium-sized banana contains 422 milligrams of potassium", calories: "89", expand:[ "0.3 g", "23 g", "1.1 g"], color: Color("bananaColor"), image: "banana"),

        FruitModel(name: "Amazing Avocado", price: "ksh 25/Kg", content: "Acocado contributes nearly 20 vitamins and minerals, making it a great nutrient-dense food choice. It also contains heart-healthy monounsaturated fat - good data", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("avocadoColor"), image: "avocado"),

        FruitModel(name: "Apple Fruit", price: "ksh 65/Kg", content: "Acocado contributes nearly 20 vitamins and minerals, making it a great nutrient-dense food choice. It also contains heart-healthy monounsaturated fat - good data", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("appleColor"), image: "apple"),

        FruitModel(name: "Apple Fruit", price: "ksh 60/Kg", content: "Acocado contributes nearly 20 vitamins and minerals, making it a great nutrient-dense food choice. It also contains heart-healthy monounsaturated fat - good data", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("appleColor"), image: "apple"),

        FruitModel(name: "Plum Fruit", price: "ksh 45/Kg", content: "Plums may have been one of the first fruits domesticated by humans.[2] Three of the most abundantly cultivated species are not found in the wild, only around human settlements", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("plumColor"), image: "plum"),

        FruitModel(name: "Egg Plant", price: "ksh 35/Kg", content: "Eggplants are fruits due to the way they grow. Fruits develop from the flower of a plant and contain seeds, whereas vegetables are any other part of the plant: roots, stems, or leaves. Eggplants belong to the nightshade family, which includes tomatoes and potatoes", calories: "160", expand: ["15 g", "9 g", "2 g"], color: Color("eggplantColor"), image: "eggplant")
        
    ]

    @State var index = 0

    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                HStack {
                    Button(action: {

                    }, label: {
                        HStack(spacing: 10) {
                            Image("back")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 30, height: 30)

                            Text("Back")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                    })
                    Spacer()
                    Button(action: {

                    }, label: {
                        HStack(spacing: 10) {
                            Image("basket")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 30, height: 30)
                        }
                    })
                }
                .padding()
                HStack {
                    Button(action: {
                        if self.index != 0 {
                            self.index -= 1
                        }
                    }, label: {
                        Image("arrowLeft")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                        .opacity(self.index != 0 ? 1 : 0.5)
                        .disabled(self.index != 0 ? false : true)

                    Image(self.data[self.index].image)
                        .resizable()
                        .frame(width: 200, height: 200)

                    Button(action: {
                        if self.index != self.data.count - 1{
                            self.index += 1
                        }

                    }, label: {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                        .opacity(self.index != self.data.count - 1 ? 1 : 0.5)
                        .disabled(self.index != self.data.count - 1  ? false : true)
                }
                .padding(.top, 30)

                VStack(spacing: 20) {
                    Text(self.data[self.index].name)
                        .fontWeight(.bold)
                        .font(.title)

                    Text(self.data[self.index].price)
                        .fontWeight(.bold)

                    Text(self.data[self.index].content)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                        .foregroundColor(.gray)

                    Text("Nutrition Value")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)

                    HStack {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)

                        VStack(alignment: .leading, spacing: 4) {
                            Text(self.data[self.index].calories)
                                .foregroundColor(.white)
                                .fontWeight(.bold)

                            Text("Calories")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding(.leading, 20)
                    }
                    .padding()
                    .background(self.data[self.index].color)
                    .cornerRadius(10)

                    HStack {
                        VStack(alignment: .center, spacing: 10) {
                            Text(self.data[self.index].expand[0])
                                .fontWeight(.bold)
                            Text("Fat")
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        VStack(alignment: .center, spacing: 10) {
                            Text(self.data[self.index].expand[1])
                                .fontWeight(.bold)
                            Text("Carbohydrate")
                                .foregroundColor(.gray)
                        }
                        Spacer()

                        VStack(alignment: .center, spacing: 10) {
                            Text(self.data[self.index].expand[2])
                                .fontWeight(.bold)
                            Text("Protein")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                }
                .padding(.horizontal, 20)
                Spacer()

                Button(action: {

                }, label: {
                    Text("Add to Cart")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width: self.width - 50)
                        .background(self.data[self.index].color)
                        .clipShape(Capsule())
                })
                    .padding(.bottom, 25)
            }
            .zIndex(1)

            Circle()
                .fill(self.data[self.index].color)
                .frame(width: self.width + 200, height: self.width + 200)
                .padding(.horizontal, -100)
                .offset(y: -self.width)
        }
        .animation(.default)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
