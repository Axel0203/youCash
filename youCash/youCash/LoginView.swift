//
//  LoginView.swift
//  youCash
//
//  Created by user243525 on 9/28/23.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack{
            Color(red:0.35, green:0.48, blue:0.59).opacity(1)
            VStack{
                Text("youCash").padding(.bottom, 100).font(.title)
                Text("Accedi").padding(.bottom, 50).font(.headline)
                HStack{
                    Image(systemName: "person").padding()
                    TextField("Nome utente", text: $username).padding(10)
                }.background().cornerRadius(10).padding(.bottom,30)
                HStack{
                    Image(systemName: "lock").padding()
                    SecureField("Password", text: $password).padding(10)
                }.background().cornerRadius(10).padding(.bottom,30)
                Button(action:{}){
                    Text("Accedi").foregroundColor(Color.white)
                        .padding(.horizontal, 100).padding(.vertical,20)
                }.background(username.isEmpty || password.isEmpty ? Color.gray : Color.blue).cornerRadius(10).disabled(username.isEmpty || password.isEmpty)
                Button("Resetta") {
                    username = ""
                    password = ""
                }.padding(10)
                Button("Nome utente/password dimenticata?") {
                    
                }.padding(10)
                Button("Non hai un account? Registrati") {
                    
                }.padding(10)
            }.padding()
        }.ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
