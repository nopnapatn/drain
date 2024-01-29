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
    
    static func fetchDrains() async throws -> [Drain] {
        let snapshot = try await Firestore.firestore().collection("drains").order(by: "timestamp", descending: true).getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: Drain.self) })
    }
    
    static func fetchUserDrains(uid: String) async throws -> [Drain] {
        let snapshot = try await Firestore.firestore().collection("drains").whereField("ownerUid", isEqualTo: uid).getDocuments()
        
        let drains = snapshot.documents.compactMap({ try? $0.data(as: Drain.self) })
        return drains.sorted(by: { $0.timestamp.dateValue() > $1.timestamp.dateValue() })
    }
}


