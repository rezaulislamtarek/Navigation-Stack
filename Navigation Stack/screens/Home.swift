//
//  ContentView.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var route : Router
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Image(systemName: "person")
                .resizable()
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .frame(width: 120, height: 120)
            Text("Tarek is an accomplished iOS developer with a passion for crafting seamless and innovative mobile experiences. With expertise in Swift and a keen eye for design, he excels in creating user-friendly applications that blend functionality and aesthetics. Tarek thrives on staying ahead of industry trends and delivering cutting-edge solutions.")
            
            HStack(spacing: 24) {
                Button("Profile") {
                    route.navigateTo(.profile)
                }
                Button("Protfolio") {
                    route.navigateTo(.protfolio)
                }
                Button("Expriense") {
                    route.navigateTo(.expriense)
                }
                Button("Contact") {
                    route.navigateTo(.contact)
                }
            }
        }.navigationTitle("Home")
            .padding()
    }
}

struct HomeScreenContainer: View{
    @StateObject var router = Router()
    var body: some View {
        NavigationStack(path: $router.routes) {
            HomeScreen()
                .navigationDestinations()
        }
        .environmentObject(router)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeScreenContainer()
    }
}
