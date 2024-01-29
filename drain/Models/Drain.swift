//
//  Drain.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import Firebase
import FirebaseFirestoreSwift

struct Drain: Identifiable, Codable {
    @DocumentID var drainId: String?
    
    var id: String {
        return drainId ?? NSUUID().uuidString
    }
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    let likes: Int
    
    var user: User?
}
