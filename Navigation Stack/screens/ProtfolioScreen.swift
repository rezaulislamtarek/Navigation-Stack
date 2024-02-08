//
//  ProtfolioScreen.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import SwiftUI

struct Project : Identifiable, Hashable{
    var id = UUID()
    var name : String
    var details : String
}

struct ProtfolioScreen: View {
    @EnvironmentObject var router : Router
    
    var projects : [Project] = [
        Project(name: "Doctime", details: "Doctime is a mobile app for health care"),
        Project(name: "Ratehammer", details: "Ratehammer is a mobile app for fintech"),
        Project(name: "Smart Bancharampur", details: "Smart Bancharampur a mobile app for Bancharampur"),
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24){
                VStack(alignment: .leading){
                    ForEach(projects) { project in
                        VStack(alignment: .leading) {
                            Text(project.name)
                                .bold()
                            Text(project.details)
                            HStack{
                                Spacer()
                            }
                        }
                        .padding(12)
                        .background(.gray.opacity(0.1))
                        .cornerRadius(16)
                        .padding(.vertical, 4)
                        .onTapGesture {
                            router.navigateTo(.projectDetails(project))
                        }
                    }
                }
                
                
                if router.isContainBackStack(.profile){
                    Button("Back to profile"){
                        router.popTo(.profile)
                    }
                }
                Spacer()
            }
            .navigationTitle("Protfolio")
        .padding(24)
        }
    }
}

struct ProtfolioScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProtfolioScreen()
    }
}
