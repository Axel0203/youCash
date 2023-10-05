//
//  ContentView.swift
//  youCash
//
//  Created by user243525 on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)

            Text("Hello, world!")
            List{
                Section(header:Text("To do").padding()){
                    ForEach(["Abdul(ghei)","Giaco","Depe","Axel"],id: \.self){
                        datum in
                        Text(datum).font(Font.system(size: 24)).padding()
                    }.onDelete(perform:delete)
                }
            }
        }
        .padding()
    }
    func delete(at indexes: IndexSet){
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
