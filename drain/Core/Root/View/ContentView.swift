//
//  ContentView.swift
//  drain
//
//  Created by Nopnapat Norasri on 25/1/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                AppTabView()
            } else {
                SignInView()
            }
        }
    }
}

#Preview {
    ContentView()
}
