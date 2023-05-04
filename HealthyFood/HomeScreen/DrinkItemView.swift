//
//  DrinkItemView.swift
//  HealthyFood
//
//  Created by Pratikkumar Prajapati on 25/04/21.
//

import SwiftUI

struct DrinkItemView: View {
    var body: some View {
        VStack {
            
            HStack {
                let randomInt = Int.random(in: 1...6)
                Image("ic_juice_\(randomInt)")
                    .frame(maxWidth: 90, maxHeight: 140)
                    .scaledToFit()
                    .clipped()
                
            }.padding()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("Cleansing Green")
                    .font(.body)
                    .bold()
                Spacer()
            }.padding(.bottom, 1)
            
            HStack {
                Text("Apple, cucumber, spinach parsely & lemon.")
                    .font(.caption)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                Spacer()
            }.padding(.bottom, 8)
            
            HStack {
                let randomPrice = Int.random(in: 8...19)
                Text("$\(randomPrice)")
                    .font(.body)
                    .bold()
                Spacer()
            }.padding(.bottom, 8)
            
        }.padding(.leading, 16)
        .background(Color.random.opacity(0.3))        
        .cornerRadius(20.0)
    }
}

struct DrinkItemView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItemView()
    }
}
