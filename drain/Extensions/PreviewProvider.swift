//
//  PreviewProvider.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, username: "user", name: "user", email: "user@gmail.com")
    let drain = Drain(ownerUid: "700", caption: "Hi! there, Welcome to Drain place!", timestamp: Timestamp(), likes: 0)
}
