//
//  HomeScreen.swift
//  HealthyFood
//
//  Created by Pratikkumar Prajapati on 25/04/21.
//

import SwiftUI

struct HomeScreen: View {
    @State var seachString: String = ""
    @State var selectedItem: String = ""
    
    let arrayJuice: [String] = [
        "Carrot-Orange",
        "Super Green",
        "Beet-Carrot-Apple",
        "Kiwi-Watermelon-Lime",
        "Sweet Potato-Pear-Cinnamon",
        "Strawberry-Apple",
        "Grapefruit",
        "Pomegranate"
    ]
    let data = (1...8)
    
    private var twoColumnGrid = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
    ]
    
    var body: some View {
        
        VStack {
            
            ScrollView {
                HStack {
                    Text("The perfect Healthy Juices")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(Color(red: 60/255, green: 59/255, blue: 59/255))
                        .padding(.top, 4)
                    Spacer()
                }.padding(.leading, 16)
                
                HStack {
                    TextField("Search", text: $seachString)
                        .padding()
                        .frame(height: 54.0)
                        .background(Color(red: 245/255, green: 245/255, blue: 245/255))
                        .cornerRadius(8.0)
                    Spacer()
                }.padding(.leading, 16)
                .padding(.trailing, 16)
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 16) {
                        ForEach(arrayJuice, id: \.self) { item in
                            Button(action: {
                                selectedItem = item
                            }, label: {
                                
                                Text(item)
                                    .foregroundColor(selectedItem == item ? .orange : .black)                                    .font(.system(size: 16)).fontWeight( .medium)
                                
                            })
                        }
                    }.padding()
                }.frame(height: 70)
                
                
                
                HStack {
                    Text("Our top picks")
                        .bold()
                    Spacer()
                }.padding(.leading, 16)
                .padding(.top, 10)
                
                
                LazyVGrid(columns: twoColumnGrid, spacing: 20.0) {
                    ForEach(data, id: \.self) { item in
                        NavigationLink(destination: ItemDetails()) {
                            DrinkItemView()
                                .frame(maxHeight: 280)
                            
                        }.buttonStyle(PlainButtonStyle())
                        
                    }
                }.padding(.horizontal)
                
                HStack {
                }
                .frame(height: 30.0)
                
            }
            
        }
        .navigationTitle("Discovery")
        .navigationBarItems(leading: HStack {
            Button(action: {
                
            }) {
                Image("ic_bar_menu")
            }
        })
        .navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea([.bottom])
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
