//
//  ContactScreen.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import SwiftUI

struct ContactScreen: View {
    @EnvironmentObject var router : Router
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ProfileView()
            Text("Email: mrezaulislam.t@gmail.com")
            Text("Call: +880 1636469701")
            
            HStack(spacing: 24) {
                Button("Back to Home"){
                    router.popToRoot()
                }
                
                Spacer()
                
                Button("Protfolio"){
                    router.navigateTo(.protfolio)
                }
                
            }.buttonStyle(.bordered)
                .padding(.top, 24)
            Spacer()
        }
        .padding(24)
        .navigationTitle("Contact")
        
    }

}

struct ContactScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenContainer()
    }
}
