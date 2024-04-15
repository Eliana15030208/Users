//
//  UsersApp.swift
//  Users
//
//  Created by Eliana on 4/11/24.
//

import SwiftUI

@main
struct UsersApp: App {
    var body: some Scene {
        WindowGroup {
            UsersFactory.create()
        }
    }
}
