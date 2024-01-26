//
//  TextModifiler.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct TextModifiler: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.horizontal)
            .foregroundColor(.black)
    }
}
