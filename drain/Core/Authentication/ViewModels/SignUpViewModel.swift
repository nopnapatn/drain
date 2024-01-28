//
//  SignUpViewModel.swift
//  drain
//
//  Created by Nopnapat Norasri on 28/1/2567 BE.
//

import Foundation

class SignUpViewModel: ObservableObject {
    @Published var username = ""
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            username: username,
            name: name
        )
    }
}
