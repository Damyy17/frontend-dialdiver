//
//  CustomTextField.swift
//  dialdiver
//
//  Created by Damian Grosu on 25.04.2024.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeholder: String
    var isSecured = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12 ) {
//            Text(title)
//                .foregroundColor(Color("main-text"))
//                .fontWeight(.semibold)
//                .font(.custom("Clash Display", size: 16))
            
            if isSecured {
                SecureField(placeholder, text: $text)
                    .foregroundColor(Color("main-text"))
                    .padding(.horizontal, 16)
                    .padding(.vertical, 18)
                    .font(.custom("Clash Display", size: 14))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color("tertiary-color"), lineWidth: 1))
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(Color("main-text"))
                    .padding(.horizontal, 16)
                    .padding(.vertical, 18)
                    .font(.custom("Clash Display", size: 14))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color("tertiary-color"), lineWidth: 1))
            }
        }
        
    }
}

struct CustomTextField_Preview : PreviewProvider {
    static var previews: some View{
        CustomTextField(text: .constant(""), placeholder: "name@eaxmple.com")
    }
}
