//
//  WelcomeView.swift
//  HealthyFood
//
//  Created by Pratikkumar Prajapati on 25/04/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                headerView
                headerSubView
                Spacer()
                navigationLink
                    .padding()
                
            }.background {
                Image("ic_welcom")
                    .padding()
            }
        }
    }
    
    private let systemLableColor = Color(uiColor: UIColor.label)
    
    // Header Label
    
    var headerView: some View {
        Text("Welcome")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(.top, 40)
    }
    
    // Header Sub label
    
    var headerSubView: some View {
        Text("Find our perfect, healthy\nFresh Juices & Smoothies")
            .font(.system(size: 14))
            .multilineTextAlignment(.center)
            .foregroundColor(systemLableColor.opacity(0.6))
    }
    
    // navigation Link
    
    var navigationLink: some View {
        NavigationLink(destination:
                HomeScreen()
                        .transition(.slide)
        ) {
            Text("Let's drink healthy!")
                .bold()
                .padding(10)
                .background(Color(red: 255/255, green: 202/255, blue: 75/255))
                .foregroundColor(systemLableColor)
                .font(.body)
                .cornerRadius(10.0)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
