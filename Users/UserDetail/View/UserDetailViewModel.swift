//
//  UserDetailViewModel.swift
//  Users
//
//  Created by Eliana on 4/13/24.
//

import SwiftUI

class UserDetailViewModel: ObservableObject {
    @Published var user: UserModel
    
    init(user: UserModel) {
        self.user = user
    }
}
