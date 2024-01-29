//
//  UserContentListViewModel.swift
//  drain
//
//  Created by Nopnapat Norasri on 30/1/2567 BE.
//

import Foundation

class UserContentListViewModel: ObservableObject {
    @Published var drains = [Drain]()
    
    let user: User
    
    init(user: User) {
        self.user = user
        Task { try await fetchUserDrains() }
    }
    
    @MainActor
    func fetchUserDrains() async throws {
        var drains = try await DrainService.fetchUserDrains(uid: user.id)
        
        for i in 0 ..< drains.count {
            drains[i].user = self.user
        }
        
        self.drains = drains
    }
}
