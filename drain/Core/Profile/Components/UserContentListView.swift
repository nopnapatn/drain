//
//  UserContentListView.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import SwiftUI

struct UserContentListView: View {
    @StateObject var viewModel: UserContentListViewModel
    @State private var selectedFilter: ProfileDrainFilter = .drains
    @Namespace var animation
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: UserContentListViewModel(user: user))
    }
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileDrainFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
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
                                .frame(width: filterBarWidth, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        } else {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: filterBarWidth, height: 1)
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
                ForEach(viewModel.drains) { drain in
                    AppDrainCell(drain: drain)
                }
            }
        }
        .padding(.vertical, 8)
    }
}

//#Preview {
//    UserContentListView()
//}

struct UserContentListValue_Preview: PreviewProvider {
    static var previews: some View {
        UserContentListView(user: dev.user)
    }
}
