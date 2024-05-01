//
//  BottomNavBar.swift
//  dialdiver
//
//  Created by Damian Grosu on 27.04.2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home
    case notification
    case favorites
    case profile
}

struct BottomNavBar: View {
    @Binding var selectedTab: Tab
    private var activeImage : String{
        selectedTab.rawValue + ".active"
    }
    
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(selectedTab == tab ? activeImage : tab.rawValue)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding(16)
                        .onTapGesture{
                            withAnimation(.easeIn(duration: 0.1)){
                                selectedTab = tab
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(selectedTab == tab ? Color("bg-color") : Color.clear)
                        )
                    Spacer()
                }

            }
            .frame(width: nil, height: 72)
            .background(Color("main-text"))
            .cornerRadius(20)
            .padding()
            
        }
    }
}

#Preview {
    BottomNavBar(selectedTab: .constant(.home))
}
