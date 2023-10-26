//
//  HomeView.swift
//  youCash
//
//  Created by user243525 on 10/13/23.
//

import SwiftUI
import Charts

struct HomeView: View {
    let viewMonths:[ViewMonth]=[
        .init(date: Date.from(year: 2023, month: 1, day: 1), moneyCount: 200),
        .init(date: Date.from(year: 2023, month: 2, day: 1), moneyCount: 300),
        .init(date: Date.from(year: 2023, month: 3, day: 1), moneyCount: 400),
        .init(date: Date.from(year: 2023, month: 4, day: 1), moneyCount: 200),
        .init(date: Date.from(year: 2023, month: 5, day: 1), moneyCount: 100),
        .init(date: Date.from(year: 2023, month: 6, day: 1), moneyCount: 250),
        .init(date: Date.from(year: 2023, month: 7, day: 1), moneyCount: 300),
        .init(date: Date.from(year: 2023, month: 8, day: 1), moneyCount: 500),
        .init(date: Date.from(year: 2023, month: 9, day: 1), moneyCount: 700),
        .init(date: Date.from(year: 2023, month: 10, day: 1), moneyCount: 200),
        .init(date: Date.from(year: 2023, month: 11, day: 1), moneyCount: 300),
        .init(date: Date.from(year: 2023, month: 12, day: 1), moneyCount: 200),
        
    ]
    var body: some View {

        VStack{

            HStack{
                Text("youCash")
                    .font(.title)
                    .padding(.leading,144)
                Spacer()
                Image(systemName: "bell.circle.fill")
                    .padding(.all)
                    .font(.system(size: 30))
            }
            
            Chart{
                ForEach(viewMonths){ viewMonth in
                    BarMark(
                        x:.value("Month", viewMonth.date,unit:.month),
                        y:.value("Money", viewMonth.moneyCount)
                    )
                }
            }
                        
            Text("Ultimi 30 giorni")
            HStack{
                CardView(amount: 10, type: "entrata")
                CardView(amount: 20, type: "uscita")
            }
            VStack {
                Text("Ultime spese")
                List{
                    ItemView(iconName: "cart.fill", description: "Prodotto", price: "$19.99",date: "oggi")
                    ItemView(iconName: "cart.fill", description: "Prodotto", price: "$19.99",date: "oggi")
                    ItemView(iconName: "cart.fill", description: "Prodotto", price: "$19.99",date: "oggi")
                    
                    ItemView(iconName: "cart.fill", description: "Prodotto", price: "$19.99",date: "oggi")
                    ItemView(iconName: "cart.fill", description: "Prodotto", price: "$19.99",date: "oggi")
                }  .listStyle(PlainListStyle())
                    
            }


        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()

    }
}

struct ViewMonth: Identifiable{
    let id = UUID()
    let date:Date
    let moneyCount:Int
}

extension Date{
    static func from(year:Int,month:Int,day:Int)-> Date{
        let components = DateComponents(year:year,month:month,day:day)
        return Calendar.current.date(from:components)!
    }
}
