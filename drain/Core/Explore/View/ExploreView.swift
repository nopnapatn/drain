//
//  ExploreView.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ExploreViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) {
                        user in NavigationLink(value: user) {
                            VStack {
                                AppUserCell(user: user)
                                
                                Divider()
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: { user in ProfileView()})
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search..")
        }
    }
}

#Preview {
    ExploreView()
}
