//
//  ContentView.swift
//  dialdiver
//
//  Created by Damian Grosu on 05.04.2024.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        
        ZStack{
            VStack{
                switch selectedTab {
                    case .home:
                        HomeView()
                    case .notification:
                    NotificationView(notifications: notificationsEx)
                    case .favorites:
                        FavoritesView()
                    case .profile:
                        ProfileView()
                }
            }
            
            VStack{
                Spacer()
                BottomNavBar(selectedTab: $selectedTab)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
