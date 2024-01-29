//
//  ExploreViewModel.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
