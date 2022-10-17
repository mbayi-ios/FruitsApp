//
//  ContentView.swift
//  FruitApp
//
//  Created by Amby on 17/10/2022.
//

import SwiftUI

struct Home: View {
    @ObservedObject var viewModel = FruitViewModel()

    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                header
                .padding()
                HStack {
                    Button(action: {
                        if self.viewModel.index != 0 {
                            self.viewModel.index -= 1
                        }
                    }, label: {
                        Image("arrowLeft")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                        .opacity(self.viewModel.index != 0 ? 1 : 0.5)
                        .disabled(self.viewModel.index != 0 ? false : true)

                    Image(viewModel.fruitsData[viewModel.index].image)
                        .resizable()
                        .frame(width: 200, height: 200)

                    Button(action: {
                        if viewModel.index != viewModel.fruitsData.count - 1{
                            viewModel.index += 1
                        }

                    }, label: {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                        .opacity(viewModel.index != viewModel.fruitsData.count - 1 ? 1 : 0.5)
                        .disabled(viewModel.index != viewModel.fruitsData.count - 1  ? false : true)
                }
                .padding(.top, 30)

                VStack(spacing: 20) {
                    Text(viewModel.fruitsData[viewModel.index].name)
                        .fontWeight(.bold)
                        .font(.title)

                    Text(self.viewModel.fruitsData[self.viewModel.index].price)
                        .fontWeight(.bold)

                    Text(self.viewModel.fruitsData[self.viewModel.index].content)
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
                            Text(viewModel.fruitsData[viewModel.index].calories)
                                .foregroundColor(.white)
                                .fontWeight(.bold)

                            Text("Calories")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding(.leading, 20)
                    }
                    .padding()
                    .background(viewModel.fruitsData[viewModel.index].color)
                    .cornerRadius(10)

                    HStack {
                        VStack(alignment: .center, spacing: 10) {
                            Text(viewModel.fruitsData[viewModel.index].expand[0])
                                .fontWeight(.bold)
                            Text("Fat")
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        VStack(alignment: .center, spacing: 10) {
                            Text(viewModel.fruitsData[viewModel.index].expand[1])
                                .fontWeight(.bold)
                            Text("Carbohydrate")
                                .foregroundColor(.gray)
                        }
                        Spacer()

                        VStack(alignment: .center, spacing: 10) {
                            Text(viewModel.fruitsData[viewModel.index].expand[2])
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
                        .frame(width: viewModel.width - 50)
                        .background(viewModel.fruitsData[viewModel.index].color)
                        .clipShape(Capsule())
                })
                    .padding(.bottom, 25)
            }
            .zIndex(1)

            Circle()
                .fill(viewModel.fruitsData[viewModel.index].color)
                .frame(width: viewModel.width + 200, height: viewModel.width + 200)
                .padding(.horizontal, -100)
                .offset(y: -viewModel.width)
        }
        .animation(.default)
    }

}

extension Home {
    private var header: some View {
        HStack {
            Button(action: {

            }, label: {
                HStack(spacing: 10) {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
            })
            Spacer()
            Button(action: {

            }, label: {
                HStack(spacing: 10) {
                    Image(systemName: "cart.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


