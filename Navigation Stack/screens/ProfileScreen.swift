//
//  ProfileScreen.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import SwiftUI

struct ProfileScreen: View {
    @EnvironmentObject var router : Router
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            ProfileView()

            Text("Hailing from the picturesque town of Kanchanpur in Bancharampur, Brahmanbaria, Bangladesh, Tarek, born on March 24, 1996, is an iOS developer who translates his roots into innovative digital solutions. With a birthday surrounded by the beauty of his hometown, Tarek brings a unique perspective to his craft, blending technology with cultural inspiration.")
           
            Button("Contact"){
                router.navigateTo(.contact)
            }
            .buttonStyle(.borderedProminent)
            Spacer()
            
            
        }
        .navigationTitle("Profile")
        .padding(24)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenContainer()
    }
}

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Image("pp tarek")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text("MD. Rezaul Islam")
        }
    }
}
