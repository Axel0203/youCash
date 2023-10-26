//
//  MainView.swift
//  youCash
//
//  Created by user243525 on 10/13/23.
//

import SwiftUI


struct MainView: View {
    var body: some View {
        TabView {
            Group {
                HomeView().padding(.bottom,20)
                    .tabItem {
                        CustomTabItem(imageName: "house.fill", text: "Home")
                    }
                
                GraficoSpeseView()
                    .tabItem {
                        CustomTabItem(imageName: "chart.bar.fill", text: "Grafico")
                    }
                AggiungiSpesaView()
                    .tabItem {
                        CustomTabItem(imageName: "dollarsign.circle.fill", text: "Spesa")
                    }
                
                Text("Aggiungi enswtrata")
                    .tabItem {
                        CustomTabItem(imageName: "plus.circle.fill", text: "Aggiungi entrata")
                    }
                Text("Profsilo")
                    .tabItem {
                        CustomTabItem(imageName: "person.fill", text: "Profilo")
                    }
            }
        }.background(Color.yellow)
    }
}


struct CustomTabItem: View {
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .imageScale(.large)
                .padding(.top, 8)
            Text(text)
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    
    }
}
	
