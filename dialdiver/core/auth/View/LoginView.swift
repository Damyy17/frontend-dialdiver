//
//  LoginView.swift
//  dialdiver
//
//  Created by Damian Grosu on 25.04.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var passowrd = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                //image
                Image("logo_dialdiver")
                    .resizable()
                    .scaledToFill()
                    .frame(width:116 , height: 36)
                    .padding(.vertical, 32)
                
                Spacer().frame(height: 92)
                
                //header details
                HeaderDetails(text: .constant(""), title: "Log In", subtitle: "Please enter your credentials and get into your account.")
                
                //form fields
                VStack(spacing: 18) {
                    CustomTextField(text: $email,
                                    placeholder: "Email Address")
                    .autocapitalization(.none)
                    
                    CustomTextField(text: $passowrd,
                                    placeholder: "Password",
                                    isSecured: true
                    )
                }
                .padding(.horizontal, 16)
                .padding(.top, 18)
                .padding(.bottom, 32)
                
                //sign in button
                
                Button {
                    print("User logged in..")
                } label: {
                    HStack {
                        Text("Log In")
                            .foregroundColor(Color("bg-color"))
                            .fontWeight(.medium)
                            .font(.custom("Clash Display", size: 18))
                    }
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color("primary-color"))
                .cornerRadius(20)
                
                NavigationLink {
                    RegisterView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Dont have an account?")
                            .foregroundColor(Color("main-text"))
                            .fontWeight(.regular)
                            .font(.custom("Clash Display", size: 16))
                        
                        Text("Create Account")
                            .foregroundColor(Color("main-text"))
                            .fontWeight(.semibold)
                            .font(.custom("Clash Display", size: 16))
                    }
                }
                .padding(16)
                
                
                Spacer()
                
                //sign up button
            }
        }
    }
}

#Preview {
    LoginView()
}
