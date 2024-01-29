//
//  AppDrainCell.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct AppDrainCell: View {
    let drain: Drain
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                AppProfileImage(user: drain.user, size: .small)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        HStack {
                            Text(drain.user?.name ?? "")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("@\(drain.user?.username ?? "")")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Text(drain.timestamp.timestampString())
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    Text(drain.caption)
                        .font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Text("10")
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Text("10")
                            Image(systemName: "bubble.right")
                        }

                        Button {
                            
                        } label: {
                            Text("10")
                            Image(systemName: "arrow.rectanglepath")
                        }

                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.top, 8)
                }
            }
        }
        .padding(.horizontal)
        .padding(.top, 8)
    }
}

//#Preview {
//    AppDrainCell()
//}

struct AppDrainCell_Preview: PreviewProvider {
    static var previews: some View {
        AppDrainCell(drain: dev.drain)
    }
}
