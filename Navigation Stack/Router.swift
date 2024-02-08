//
//  Router.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import Foundation

enum Route: Hashable{
    case home
    case skil
    case profile
    case protfolio
    case expriense
    case contact
    case projectDetails(Project)
}

class Router : ObservableObject{
    @Published var routes: [Route] = []
    
    func navigateTo(_ route : Route){
        routes.append(route)
    }
    
    func pop(){
        routes.removeLast()
    }
    
    func popTo(_ route: Route){
        guard let index = routes.firstIndex(of: route) else { return }
        routes = Array(routes[0...index])
    }
    
    func isContainBackStack(_ route: Route) -> Bool{
        guard let index = routes.firstIndex(of: route) else { return false }
        return true
         
    }
    
    func popToRoot(){
        routes.removeLast(routes.count)
    }
}
