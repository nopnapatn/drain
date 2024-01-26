//
//  AppDrainCell.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct AppDrainCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("drain-app-icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        HStack {
                            Text("neuw")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("@nopnapatn")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Text("27m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    Text("Hi there, Welcome to drain")
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
            
//            Divider()
        }
        .padding(.horizontal)
        .padding(.top, 8)
    }
}

#Preview {
    AppDrainCell()
}
