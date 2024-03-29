//
//  SignUpView.swift
//  drain
//
//  Created by Nopnapat Norasri on 25/1/2567 BE.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = SignUpViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Drain")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(30)
            
            VStack {
                HStack {
                    Text("Username")
                        .modifier(AppTextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                TextField("Enter your username", text: $viewModel.username)
                    .modifier(AppTextFieldModifier())
                
                HStack {
                    Text("name")
                        .modifier(AppTextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                TextField("Enter your name", text: $viewModel.name)
                    .modifier(AppTextFieldModifier())
                
                HStack {
                    Text("Email")
                        .modifier(AppTextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                TextField("Enter your email", text: $viewModel.email
                )
                    .modifier(AppTextFieldModifier())
                
                HStack {
                    Text("Password")
                        .modifier(AppTextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(AppTextFieldModifier())
                
                HStack {
                    Text("Confirm Password")
                        .modifier(AppTextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                SecureField("Enter your confirm password", text: $viewModel.confirmPassword)
                    .modifier(AppTextFieldModifier())
                
                Button {
                    Task { try await viewModel.createUser() }
                } label: {
                    Text("Sign Up")
                        .modifier(AppButtonModifiler())
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
              Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 4)
            }
        }
    }
}

#Preview {
    SignUpView()
}
