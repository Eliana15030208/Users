//
//  UsersService.swift
//  Users
//
//  Created by Eliana on 4/12/24.
//

import Foundation

class UsersService {
    func getUsers(endpoint: Endpoint) async -> [UserModel] {
        do {
            let session = URLSession.shared
            guard let url = URL(string: Constant.baseUrl + endpoint.path) else {
                return []
            }
            let request = URLRequest(url: url)
            let response = try await session.data(for: request)
            let users: [UserModel] = response.0.toModel()
            return users
        } catch {
            print(error.localizedDescription)
        }
        return []
    }
}
