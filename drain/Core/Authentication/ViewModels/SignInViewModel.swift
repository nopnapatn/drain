//
//  SignInViewModel.swift
//  drain
//
//  Created by Nopnapat Norasri on 28/1/2567 BE.
//

import Foundation

class SignInViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func signIn() async throws {
        try await AuthService.shared.signIn(
            withEmail: email,
            password: password
        )
    }
}
