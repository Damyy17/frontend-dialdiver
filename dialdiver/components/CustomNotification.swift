//
//  CustomNotification.swift
//  dialdiver
//
//  Created by Damian Grosu on 30.04.2024.
//

import SwiftUI

struct CustomNotification: View {
    
    let imageName: String
    let title: String
    let description: String
    let time: String
    
    var body: some View {
        HStack(spacing: 12){
            Image(imageName)
                .resizable()
                .frame(width: 56, height: 56)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: 12).stroke(Color("tertiary-color"), lineWidth: 1))
            
    
            VStack(alignment: .leading){
                Text(title)
                    .font(.custom("Clash Display", size: 16))
                    .foregroundColor(Color("main-text"))
                    .fontWeight(.semibold)
                Text(description)
                    .font(.custom("Clash Display", size: 14))
                    .foregroundColor(Color("main-text"))
                    .fontWeight(.regular)
            }
            
            Spacer()
            
            VStack{
                Text(time)
                    .font(.custom("Clash Display", size: 14))
                    .foregroundColor(Color("main-text"))
                    .fontWeight(.regular)
                ZStack{
                    Circle()
                        .frame(width: 19, height: 19)
                        .foregroundColor(Color("primary-color"))
                    Text("!")
                        .foregroundColor(Color("bg-color"))
                        .font(.custom("Clash Display", size: 14))
                }
                
            }
        }
    }
}

#Preview {
    CustomNotification(imageName: "company-image", title: "Enter.online", description: "Hello! Lower prices on iPhones on Enter right now!", time:"12:25")
}
