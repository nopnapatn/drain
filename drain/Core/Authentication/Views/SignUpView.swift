//
//  SignUpView.swift
//  drain
//
//  Created by Nopnapat Norasri on 25/1/2567 BE.
//

import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
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
                        .modifier(TextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                TextField("Enter your username", text: $username)
                    .modifier(TextFieldModifier())
                
                HStack {
                    Text("Email")
                        .modifier(TextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                TextField("Enter your email", text: $email)
                    .modifier(TextFieldModifier())
                
                HStack {
                    Text("Password")
                        .modifier(TextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                SecureField("Enter your password", text: $password)
                    .modifier(TextFieldModifier())
                
                HStack {
                    Text("Confirm Password")
                        .modifier(TextModifiler())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Spacer()
                }
                SecureField("Enter your confirm password", text: $confirmPassword)
                    .modifier(TextFieldModifier())
                
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .modifier(ButtonModifiler())
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
