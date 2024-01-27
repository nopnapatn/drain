//
//  AppButtonModifiler.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct AppButtonModifiler: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(.black)
            .cornerRadius(8)
    }
}
