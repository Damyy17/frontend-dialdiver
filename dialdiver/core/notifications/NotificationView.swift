//
//  NotificationView.swift
//  dialdiver
//
//  Created by Damian Grosu on 26.04.2024.
//

import SwiftUI

let notificationsEx: [NotificationModel] = [
    NotificationModel(imageName: "company-image", title: "Enter.online", description: "Hello! Lower prices on iPhones on Enter right now!", time: "12:25"),
    NotificationModel(imageName: "company-image", title: "Darwin.md", description: "Hello! Lower prices on iPhones on Darwin right now!", time: "14:25"),
    NotificationModel(imageName: "company-image", title: "Example.com", description: "New products available on Example.com!", time: "15:30")
]

struct NotificationView: View {
    
    let notifications: [NotificationModel] // An array of NotificationData
        
        var body: some View {
            VStack(spacing: 18) {
                HStack {
                    Text("Notifications")
                        .font(.custom("Clash Display", size: 18))
                        .foregroundColor(Color("main-text"))
                        .fontWeight(.semibold)
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 19, height: 19)
                            .foregroundColor(Color("primary-color"))
                        Text("\(notifications.count)")
                            .foregroundColor(Color("bg-color"))
                            .font(.custom("Clash Display", size: 14))
                    }
                }
                
                VStack(spacing: 16) {
                    ForEach(notifications.indices, id: \.self) { index in
                        VStack(spacing: 16) {
                            CustomNotification(imageName: notifications[index].imageName,
                                               title: notifications[index].title,
                                               description: notifications[index].description,
                                               time: notifications[index].time)
                            
                            LineShape()
                                .stroke(Color("tertiary-color"), lineWidth: 0.5)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 0.5)
                        }
                    }
                }
                Spacer()
            }
            .padding(16)
        }
    }
#Preview {
    NotificationView(notifications: notificationsEx)
}
