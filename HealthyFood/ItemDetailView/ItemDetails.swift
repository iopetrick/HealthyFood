//
//  ItemDetails.swift
//  HealthyFood
//
//  Created by Pratikkumar Prajapati on 30/04/21.
//

import SwiftUI

struct ItemDetails: View {
            
    var body: some View {
        
        VStack {
            
            Text("Hello")
            
        }
        .navigationBarTitle("Item Detail")
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    
                                }) {
                                    Text("Back")
                                }
        )
    }
    
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetails()
    }
}
