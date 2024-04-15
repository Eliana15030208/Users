//
//  Endpoint.swift
//  Users
//
//  Created by Eliana on 4/12/24.
//

import Foundation

enum Endpoint {
    case users
    
    var path: String {
        switch self {
        case .users:
            return "/users"
        }
    }
}
