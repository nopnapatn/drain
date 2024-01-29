//
//  FeedViewModel.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var drains = [Drain]()
    
    init() {
        Task { try await fetchDrains() }
    }

    @MainActor
    func fetchDrains() async throws {
        self.drains = try await DrainService.fetchDrains()
        try await fetchUserDataForDrains()        
    }
   
    @MainActor
    private func fetchUserDataForDrains() async throws {
        for i in 0 ..< drains.count {
            let drain = drains[i]
            let ownerUid = drain.ownerUid
            let drainUser = try await UserService.fetchUser(withUid: ownerUid)
            drains[i].user = drainUser
        }
    }
}
