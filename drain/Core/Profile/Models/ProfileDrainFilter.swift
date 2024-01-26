//
//  ProfileDrainFilter.swift
//  drain
//
//  Created by Nopnapat Norasri on 27/1/2567 BE.
//

import Foundation

enum ProfileDrainFilter: Int, CaseIterable, Identifiable {
    case drains
    case replies
    
    var title: String {
        switch self {
        case .drains: return "Drains"
        case .replies: return "Repiles"
        }
    }
    
    var id: Int { return self.rawValue }
}
