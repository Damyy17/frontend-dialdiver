//
//  RegisterView.swift
//  dialdiver
//
//  Created by Damian Grosu on 25.04.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var fullname = ""
    @State private var email = ""
    @State private var passowrd = ""
    @State private var confirmPassowrd = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                //image
                Image("logo_dialdiver")
                    .resizable()
                    .scaledToFill()
                    .frame(width:116 , height: 36)
                    .padding(.vertical, 32)
                
                Spacer().frame(height: 42)
                
                //header details
                HeaderDetails(text: .constant(""), title: "Create Your Account", subtitle: "Please enter data to create a new account to use.")
                
                //form fields
                VStack(spacing: 18) {
                    CustomTextField(text: $fullname,
                                    placeholder: "Full Name")
                    
                    CustomTextField(text: $email,
                                    placeholder: "Email Address")
                    .autocapitalization(.none)
                    
                    CustomTextField(text: $passowrd,
                                    placeholder: "Password",
                                    isSecured: true
                    )
                    
                    CustomTextField(text: $confirmPassowrd,
                                    placeholder: "Confirm Password",
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
                        Text("Register")
                            .foregroundColor(Color("bg-color"))
                            .fontWeight(.medium)
                            .font(.custom("Clash Display", size: 18))
                    }
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color("primary-color"))
                .cornerRadius(20)
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                            .foregroundColor(Color("main-text"))
                            .fontWeight(.regular)
                            .font(.custom("Clash Display", size: 16))
                        
                        Text("Log In")
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
    RegisterView()
}
