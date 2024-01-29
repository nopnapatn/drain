//
//  AppUserCell.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct AppUserCell: View {
    let user: User
    
    var body: some View {
        HStack {
            AppProfileImage(user: user, size: .small)
            
            VStack(alignment: .leading) {
                Text(user.name)
                    .fontWeight(.semibold)
                
                Text("@\(user.username)")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Folow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

//#Preview {
//    AppUserCell(user: dev.user)
//}

struct AppUserCell_Preview: PreviewProvider {
    static var previews: some View {
        AppUserCell(user: dev.user)
    }
}
