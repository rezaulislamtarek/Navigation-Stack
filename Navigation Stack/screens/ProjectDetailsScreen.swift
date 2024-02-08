//
//  ProjectDetailsScreen.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import SwiftUI

struct ProjectDetailsScreen: View {
    var project : Project
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(project.name )
                .font(.largeTitle)
            Text(project.details)
            HStack(){
                Spacer()
            }
            Spacer()
        }
        .padding(24)
        .navigationBarTitleDisplayMode(.inline)
        //.navigationTitle(project.name)
    }
}

struct ProjectDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailsScreen(project: Project(name: "ABC", details: "abc details is abc"))
    }
}
