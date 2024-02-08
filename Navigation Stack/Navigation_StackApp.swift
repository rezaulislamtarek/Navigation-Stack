//
//  Navigation_StackApp.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import SwiftUI

@main
struct Navigation_StackApp: App {
    @StateObject private var router = Router()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.routes ) {
                HomeScreen()
                    .navigationDestinations()
            }
            .environmentObject(router)
        }
    }
}

extension View {
    func navigationDestinations() -> some View{
        self.navigationDestination(for: Route.self) { route in
            switch route {
            case .home:
                HomeScreen()
            case .skil:
                Text("Skil")
            case .profile:
                ProfileScreen()
            case .protfolio:
                ProtfolioScreen()
            case .expriense:
                ExprienceScreen()
            case .contact:
               ContactScreen()
            case .projectDetails(let project):
                ProjectDetailsScreen(project: project)
            }
            
        }
    }
}
