//
//  ItemView.swift
//  youCash
//
//  Created by user243525 on 10/13/23.
//

import SwiftUI

struct ItemView: View {
    var iconName: String
    var description: String
    var price: String
    var date:String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .frame(width: 40, height: 40)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            
            VStack{
                
                Text(description)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.leading,20)
                Text(date)
                    .font(.subheadline).padding(.trailing,40)
            }
    
            
            Spacer()
            
            Text(price)
                .font(.title)
                .foregroundColor(.green)
        }
        .padding(10)
        .background(Color.gray)
        .cornerRadius(10)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(iconName: "cart.fill", description: "Prodotto", price: "$19.99",date: "oggi")
    }
}
