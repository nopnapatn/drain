//
//  SignInView.swift
//  drain
//
//  Created by Nopnapat Norasri on 25/1/2567 BE.
//

import SwiftUI

struct SignInView: View {
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
                    HStack {
                        Text("Username")
                            .modifier(AppTextModifiler())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        Spacer()
                    }
                    TextField("Enter your email", text: $email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .modifier(AppTextFieldModifier())
                    
                    HStack {
                        Text("Password")
                            .modifier(AppTextModifiler())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        Spacer()
                    }
                    SecureField("Enter your password", text: $password)
                        .modifier(AppTextFieldModifier())
                }
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .modifier(AppTextModifiler())
                        .padding(.trailing)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Sign In")
                        .modifier(AppButtonModifiler())
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    SignUpView()
                        .navigationBarBackButtonHidden(true)
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
    SignInView()
}
