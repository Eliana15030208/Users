//
//  UsersViewModel.swift
//  Users
//
//  Created by Eliana on 4/12/24.
//

import SwiftUI

class UsersViewModel: ObservableObject {
    var useCase: GetUsersUseCase
    
    init(useCase: GetUsersUseCase) {
        self.useCase = useCase
    }
    
    @Published var users: [UserModel] = []
    
    func loadUsers() async {
        users = await useCase.getUsers()
    }
}
