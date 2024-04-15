//
//  UsersFactory.swift
//  Users
//
//  Created by Eliana on 4/14/24.
//

import SwiftUI

class UsersFactory {
    static func create() -> some View {
        let service = UsersService()
        let useCase = GetUsersUseCase(service: service)
        let viewModel = UsersViewModel(useCase: useCase)
        
        return UsersView(viewModel: viewModel)
    }
}
