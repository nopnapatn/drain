//
//  ProfileView.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileDrainFilter = .drains
    @Namespace var animation
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            AppProfileImage()
                            
                            Text("neuw")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("@nopnapatn")
                                .font(.subheadline)
                        }
                        
                        Text("description: Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                            .font(.footnote)
                        
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
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                        .padding(.vertical, 8)
                    
                }
                
                VStack {
                    HStack {
                        ForEach(ProfileDrainFilter.allCases) {
                            filter in VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 180, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 180, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0 ... 10, id: \.self) {
                            drain in AppDrainCell()
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
