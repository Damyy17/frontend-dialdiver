//
//  HeaderDetails.swift
//  dialdiver
//
//  Created by Damian Grosu on 25.04.2024.
//

import SwiftUI

struct HeaderDetails: View {
    @Binding var text: String
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .center){
            
            Text(title)
                .foregroundColor(Color("main-text"))
                .fontWeight(.semibold)
                .font(.custom("Clash Display", size: 32))
            
            
            Text(subtitle)
                .foregroundColor(Color("main-text"))
                .fontWeight(.regular)
                .font(.custom("Clash Display", size: 16))
                .multilineTextAlignment(.center)
                .frame(width: UIScreen.main.bounds.width - 104)
            
        }
        .padding(.horizontal, 16)
    }
}

struct HeaderDetails_Preview: PreviewProvider {
    static var previews: some View{
        HeaderDetails(text: .constant(""), title: "Log In", subtitle: "Please enter your credentials and get into your account.")
    }
}

