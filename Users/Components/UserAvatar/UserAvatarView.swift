//
//  UserAvatarView.swift
//  Users
//
//  Created by Eliana on 4/13/24.
//

import SwiftUI

struct UserAvatarView: View {
    
    var name: String
    
    var body: some View {
        Circle()
            .fill(Color.gray)
            .overlay {
                HStack(spacing: .zero) {
                    Text(name.components(separatedBy: " ").first?.first?.description ?? "")
                    Text(name.components(separatedBy: " ").last?.first?.description ?? "")
                }
                .foregroundStyle(Color.white)
                .font(.title3)
                .fontWeight(.bold)
            }
    }
}

#Preview {
    UserAvatarView(name: "Leanne Graham")
}
