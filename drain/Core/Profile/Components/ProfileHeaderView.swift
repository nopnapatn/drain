//
//  ProfileHeaderView.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    AppProfileImage()
                    
                    Text(user?.name ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("@\(user?.username ?? "")")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray))
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                HStack {
                    Text("7 Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("3 Followers")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
        }
    }
}

//#Preview {
//    ProfileHeaderView()
//}

struct ProfileHeaderView_Preview: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: dev.user)
    }
}
