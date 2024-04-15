//
//  UserDetailView.swift
//  Users
//
//  Created by Eliana on 4/13/24.
//

import SwiftUI

struct UserDetailView: View {
    
    @ObservedObject var viewModel: UserDetailViewModel
    
    init(user: UserModel) {
      viewModel = UserDetailViewModel(user: user)
    }
    
    var body: some View {
        VStack {
            UserAvatarView(name: viewModel.user.name)
                .frame(width: 80)
            Text(viewModel.user.name)
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical, 10)
            Form {
                Section("Contact") {
                    HStack {
                        Text("Username:").fontWeight(.semibold)
                        Text(viewModel.user.username)
                    } 
                    HStack {
                        Text("Email:").fontWeight(.semibold)
                        Text(viewModel.user.email)
                    }
                    HStack {
                        Text("Phone:").fontWeight(.semibold)
                        Text(viewModel.user.phone)
                    }
                    HStack {
                        Text("Website:").fontWeight(.semibold)
                        Text(viewModel.user.website)
                    }
                }
                
                Section("Address") {
                    HStack {
                        Text("Street:").fontWeight(.semibold)
                        Text(viewModel.user.address.street)
                    }
                    HStack {
                        Text("Suite:").fontWeight(.semibold)
                        Text(viewModel.user.address.suite)
                    }
                    HStack {
                        Text("City:").fontWeight(.semibold)
                        Text(viewModel.user.address.city)
                    }
                    HStack {
                        Text("Zipcode:").fontWeight(.semibold)
                        Text(viewModel.user.address.zipcode)
                    }
                    HStack {
                        Text("Geo:").fontWeight(.semibold)
                        Text("Latitude \(viewModel.user.address.geo.lat), Longitude \(viewModel.user.address.geo.lng)")
                    }
                }
                
                Section("Company") {
                    HStack {
                        Text("Name:").fontWeight(.semibold)
                        Text(viewModel.user.company.name)
                    }
                    HStack {
                        Text("Catch Phrase:").fontWeight(.semibold)
                        Text(viewModel.user.company.catchPhrase)
                    }
                    HStack {
                        Text("Bs:").fontWeight(.semibold)
                        Text(viewModel.user.company.bs)
                    }
                }
            }
            Spacer()
        }
    }
}

#Preview {
    UserDetailView(user: UserModel(id: 1,
                                   name: "Leanne Graham",
                                   username: "Bret",
                                   email: "Sincere@april.biz",
                                   address: AddressModel(street: "Kulas Light",
                                                         suite: "Apt. 556",
                                                         city: "Gwenborough",
                                                         zipcode: "92998-3874",
                                                         geo: GeoModel(lat: "-37.3159",
                                                                       lng: "81.1496")),
                                   phone: "1-770-736-8031 x56442",
                                   website: "hildegard.org",
                                   company: CompanyModel(name: "Romaguera-Crona",
                                                         catchPhrase: "Multi-layered client-server neural-net",
                                                         bs: "harness real-time e-markets")))
}
