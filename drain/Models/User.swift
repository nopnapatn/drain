//
//  User.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let username: String
    let name: String
    let email: String
    var profileImageUrl: String?
    var bio: String?
}
