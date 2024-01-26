//
//  SignInView.swift
//  drain
//
//  Created by Nopnapat Norasri on 25/1/2567 BE.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("drain-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 320)
                    .padding()
                
                HStack {
                    Text("Hi there! This is")
                    
                 Text("Drain")
                    .font(.headline)
                    .fontWeight(.semibold)
                }
                
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .modifier(TextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(TextFieldModifier())
                }
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .modifier(TextModifiler())
                        .padding(.top, 8)
                        .padding(.trailing)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
//                function action something..
                } label: {
                    Text("Sign In")
                        .modifier(ButtonModifiler())
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("SignIn View")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account")
                        Text("Sign Up")
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
    LoginView()
}
