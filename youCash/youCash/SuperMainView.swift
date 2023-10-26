//
//  SuperMainView.swift
//  youCash
//
//  Created by user243525 on 10/18/23.
//

import SwiftUI

struct SuperMainView: View {
    @State var appUser: AppUser? = nil
    
    var body: some View {
        ZStack {
            if let appUser = appUser {
                //HomeView(appUser: $appUser)
                MainView()
            } else {
                SignInView(appUser: $appUser)
            }
        }
        .onAppear {
            Task {
                self.appUser = try await AuthManager.shared.getCurrentSession()
            }
        }
    }
}

struct SuperMainView_Previews: PreviewProvider {
    static var previews: some View {
        SuperMainView(appUser: nil)
    }
}
