//
//  RegisterView.swift
//  youCash
//
//  Created by user243525 on 9/28/23.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email:String=""
    @State var phone:String=""
    @State var age=0.0
    var body: some View {
        ZStack{
            Color(red:0.35, green:0.48, blue:0.59).opacity(1)
            VStack{
                Text("youCash").font(.title)
                Text("registrati").padding(.bottom, 50).font(.headline)
                HStack{
                    Image(systemName: "person").padding()
                    TextField("Nome utente", text: $username).padding(10)
                }.background().cornerRadius(10).padding(.bottom,30)
                HStack{
                    Image(systemName: "lock").padding()
                    SecureField("Password", text: $password).padding(10)
                }.background().cornerRadius(10).padding(.bottom,30)
                HStack{
                    Image(systemName:"at").padding()
                    TextField("E-mail", text: $email).padding(10)
                }.background().cornerRadius(10).padding(.bottom,30)
                HStack{
                    Image(systemName: "phone").padding()
                    TextField("Numero di telefono", text: $phone).padding(10)
                }.background().cornerRadius(10).padding(.bottom,30)
                Slider(value: $age,in:0...99,step:1)
                Text("Età: \(Int(age))")
                Button(action:{}){
                    Text("Registrati").foregroundColor(Color.white)
                        .padding(.horizontal, 100).padding(.vertical,20)
                }.background(username.isEmpty || password.isEmpty||email.isEmpty||phone.isEmpty || age < 18.0 ? Color.gray : Color.blue).cornerRadius(10).disabled(username.isEmpty || password.isEmpty||email.isEmpty||phone.isEmpty || age < 18.0)
                Button("Resetta") {
                    username = ""
                    password = ""
                }.padding(10)
            }.padding()
        }.ignoresSafeArea()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
