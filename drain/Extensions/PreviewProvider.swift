//
//  PreviewProvider.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, username: "nopnapatn", name: "neuw", email: "nopnapatn@gmail.com")
}
