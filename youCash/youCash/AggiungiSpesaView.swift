//
//  AggiungiSpesaView.swift
//  youCash
//
//  Created by user243525 on 10/14/23.
//

import SwiftUI

struct AggiungiSpesaView: View {
    @State private var amount = ""
    @State private var date = Date()
    @State private var selectedCategory = ""
    let categories = ["Alimentari", "Macchina", "Casa", "Altro"]
    @State private var resultText = ""
    var isFormValid: Bool {
        return !amount.isEmpty && !selectedCategory.isEmpty
    }
    var body: some View {
        Form {
            Section {
                CustomTextField(label: "Importo", placeholder: "Inserisci l'importo", imageName: "dollarsign.circle", text: $amount)
                CustomDatePicker(label: "Data", date: $date)
                CustomPicker(label: "Categoria", categories: categories, selectedCategory: $selectedCategory)
            }
            
            Section {
                Button(action: {
                    
                    if isFormValid {
                        resultText = "Importo: \(amount), Data: \(date), Categoria: \(selectedCategory)"
                    }
                }) {
                    Text("Aggiungi Spesa")
                }
                .buttonStyle(PlainButtonStyle())
                .disabled(!isFormValid)
            }
            
            Section {
                Text(resultText)
                    .foregroundColor(Color.green)
                    .font(.headline)
                    .padding()
            }
        }
    }
}

struct AggiungiSpesaView_Previews: PreviewProvider {
    static var previews: some View {
        AggiungiSpesaView()
    }
}

struct CustomTextField: View {
    var label: String
    var placeholder: String
    var imageName: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(Color.blue)
            TextField(placeholder, text: $text)
                .padding(.vertical, 10)
        }
    }
}
struct CustomDatePicker: View {
    var label: String
    @Binding var date: Date
    
    var body: some View {
        HStack {
            Image(systemName: "calendar")
                .foregroundColor(Color.blue)
            Text(label)
            Spacer()
            DatePicker("", selection: $date, displayedComponents: .date)
                            .labelsHidden()
                            .datePickerStyle(DefaultDatePickerStyle())
                            .foregroundColor(Color.gray)
        }
    }
    
}
struct CustomPicker: View {
    var label: String
    var categories: [String]
    @Binding var selectedCategory: String
    
    var body: some View {
        HStack {
            Image(systemName: "tag")
                .foregroundColor(Color.blue)
            Text(label)
            Spacer()
            Picker("", selection: $selectedCategory) {
                ForEach(categories, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
        }
    }
}
