//
//  GetUsersUseCase.swift
//  Users
//
//  Created by Eliana on 4/12/24.
//

import Foundation

class GetUsersUseCase {
    var service: UsersService
    
    init(service: UsersService) {
        self.service = service
    }
    
    func getUsers() async -> [UserModel] {
        return await service.getUsers(endpoint: .users)
    }
}
