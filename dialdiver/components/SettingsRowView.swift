//
//  SettingsRowView.swift
//  dialdiver
//
//  Created by Damian Grosu on 26.04.2024.
//

import SwiftUI

struct SettingsRowView: View {
    
    let imageName: String
    let title: String
    let tintColor : Color
    let arrow:  Bool
    
    var body: some View {
        if (arrow){
            HStack(spacing: 12){
                Image(imageName)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .font(.title)
                    .foregroundColor(tintColor)
                Text(title)
                    .foregroundColor(Color("main-text"))
                    .fontWeight(.medium)
                    .font(.custom("Clash Display", size: 16))
                    
                Spacer()
                
                Image("arrow-icon")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .font(.title)
                    .foregroundColor(tintColor)
            }
        } else {
            HStack(spacing: 12){
                Image(imageName)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .font(.title)
                    .foregroundColor(tintColor)
                Text(title)
                    .foregroundColor(Color("main-text"))
                    .fontWeight(.medium)
                    .font(.custom("Clash Display", size: 16))
                    
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsRowView(imageName: "profile-icon", title: "Version", tintColor: Color(.systemGray), arrow: false)
}
