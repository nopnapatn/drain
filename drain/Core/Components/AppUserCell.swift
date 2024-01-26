//
//  AppUserCell.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct AppUserCell: View {
    var body: some View {
        HStack {
            AppProfileImage()
            
            VStack(alignment: .leading) {
                Text("nopnapatn")
                    .fontWeight(.semibold)
                
                Text("Description")
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

#Preview {
    AppUserCell()
}
