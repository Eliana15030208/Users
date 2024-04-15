//
//  UsersView.swift
//  Users
//
//  Created by Eliana on 4/11/24.
//

import SwiftUI

struct UsersView: View {
    
    @ObservedObject var viewModel: UsersViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink {
                            UserDetailView(user: user)
                        } label: {
                            UserCardView(user: user)
                              .padding(.horizontal)
                        }.tint(.black)
                    }
                }
                .navigationTitle("Users")
                .navigationBarTitleDisplayMode(.automatic)
                .onAppear {
                    Task {
                        await viewModel.loadUsers()
                    }
                }
            }
        }
    }
}

#Preview {
    UsersFactory.create()
}
