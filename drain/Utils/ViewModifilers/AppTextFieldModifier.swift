//
//  AppTextFieldModifier.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct AppTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
            .padding(.bottom)
            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
    }
}
