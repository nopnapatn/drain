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
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.leading)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                TextField("Enter your username", text: $username)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                HStack {
                    Text("Email")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.leading)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                HStack {
                    Text("Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.leading)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                HStack {
                    Text("Confirm Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.leading)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                SecureField("Enter your confirm password", text: $confirmPassword)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                Button {
//                    function action something..
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
              NavigationLink {
                    Text("SignIn View")
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
