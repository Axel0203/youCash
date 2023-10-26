//
//  CardView.swift
//  youCash
//
//  Created by user243525 on 10/13/23.
//

import SwiftUI

struct CardView: View {
    var amount: Int
    var type: String
    
    var body: some View {
        HStack {
            VStack {
                Text(type)
                Text("\(amount)")
            }
            .padding(.trailing, 10)
            
            Image(systemName: type == "entrata" ? "arrow.up.circle" : "arrow.down.circle")
                .font(.system(size: 30))
        }
        .padding(10)
        .background(type=="entrata" ? Color.green : Color.red)
        .cornerRadius(10)
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(amount: 10, type: "entrata")
    }
}
