//
//  CreateDrainViewModel.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import Firebase

class CreateDrainViewModel: ObservableObject {
    @MainActor
    func uploadDrain(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let drain = Drain(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await DrainService.uploadDrain(drain)
    }
}
