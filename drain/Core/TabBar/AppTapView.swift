//
//  AppTabView.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct AppTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem { Image(systemName: selectedTab == 0 ? "house.fill" : "house").environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
                     
            ExploreView()
                .tabItem { Image(systemName: "magnifyingglass")
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            Text("Upload Drain")
                .tabItem { Image(systemName: selectedTab == 2 ? "person.fill" : "person").environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            Text("Activity")
                .tabItem { Image(systemName: selectedTab == 3 ? "heart.fill" : "heart").environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
            
            Text("Message")
                .tabItem { Image(systemName: selectedTab == 4 ? "envelope.fill" : "envelope").environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                }
                .onAppear { selectedTab = 4 }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    AppTabView()
}
