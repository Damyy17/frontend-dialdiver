//
//  ProfileView.swift
//  dialdiver
//
//  Created by Damian Grosu on 25.04.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            HStack{
                Text("Profile")
                    .font(.custom("Clash Display", size: 18))
                    .foregroundColor(Color("main-text"))
                    .fontWeight(.semibold)
                
                Spacer()
                
//                Image("notification-v2-icon")
//                    .resizable()
//                    .frame(width: 24, height: 24)
                
            }
            Section(){
                HStack{
                    Text(User.MOCK_USER.initials)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .font(.custom("Clash Display", size: 28))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(User.MOCK_USER.fullname)
                            .font(.custom("Clash Display", size: 16))
                            .foregroundColor(Color("main-text"))
                            .fontWeight(.semibold)
                        
                        Text("Chisinau, Moldova")
                            .font(.custom("Clash Display", size: 14))
                            .foregroundColor(Color("tertiary-color"))
                            .fontWeight(.regular)
                    }
                }
            }
            Section("Account Type"){
                SettingsRowView(imageName: "profile-icon",
                                title: "Personal",
                                tintColor: Color("tertiary-color"),
                                arrow: false)
            }
            .font(.custom("Clash Display", size: 14))
            .foregroundColor(Color("main-text"))
            .fontWeight(.semibold)
            
            Section("General"){
                SettingsRowView(imageName: "profile-icon", 
                                title: "Account",
                                tintColor: Color("tertiary-color"),
                                arrow: true)
            }
            .font(.custom("Clash Display", size: 14))
            .foregroundColor(Color("main-text"))
            .fontWeight(.semibold)
            
            Section("Account"){
                SettingsRowView(imageName: "subscription-icon",
                                title: "Subscriptions",
                                tintColor: Color("tertiary-color"),
                                arrow: true)
                SettingsRowView(imageName: "rate-icon",
                                title: "Rate App",
                                tintColor: Color("tertiary-color"),
                                arrow: true)
                SettingsRowView(imageName: "notification-icon",
                                title: "Notifications",
                                tintColor: Color("tertiary-color"),
                                arrow: true)
                SettingsRowView(imageName: "region-icon",
                                title: "Language and Region",
                                tintColor: Color("tertiary-color"),
                                arrow: true)
                SettingsRowView(imageName: "support-icon",
                                title: "Help and Support",
                                tintColor: Color("tertiary-color"),
                                arrow: true)
                Button{
                    print("Sign out...")
                } label: {
                    SettingsRowView(imageName: "logout-icon",
                                    title: "Log Out",
                                    tintColor: Color("main-color"),
                                    arrow: false)
                }
                
                Button{
                    print("Account deleted...")
                } label: {
                    SettingsRowView(imageName: "delete-acc-icon",
                                    title: "Delete account",
                                    tintColor: Color("main-color"),
                                    arrow: false)
                }
                
            }
            .font(.custom("Clash Display", size: 14))
            .foregroundColor(Color("main-text"))
            .fontWeight(.semibold)
        }
//        .background(Color("bg-color"))
        .background(Color.clear)
    }
}

#Preview {
    ProfileView()
}
