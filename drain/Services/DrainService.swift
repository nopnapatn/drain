//
//  DrainService.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct DrainService {
    static func uploadDrain(_ drain: Drain) async throws {
        guard let drainData = try? Firestore.Encoder().encode(drain) else { return }
        try await Firestore.firestore().collection("drains").addDocument(data: drainData)
    }
}
