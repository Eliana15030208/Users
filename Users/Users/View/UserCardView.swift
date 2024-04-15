//
//  UserCardView.swift
//  Users
//
//  Created by Eliana on 4/12/24.
//

import SwiftUI

struct UserCardView: View {
    
    var user: UserModel
    
    var body: some View {
        HStack {
            UserAvatarView(name: user.name)
                .frame(width: 50)
            VStack(alignment: .leading) {
                HStack {
                    Text("Nombre: ")
                    Text(user.name)
                }
                HStack {
                    Text("Emeil: ")
                    Text(user.email)
                }
                HStack {
                    Text("Website: ")
                    Text(user.website)
                }
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1)
            }
            Spacer()
            Image(systemName: "info.circle")
        }
    }
}

#Preview {
    UserCardView(user: UserModel(id: 1,
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
