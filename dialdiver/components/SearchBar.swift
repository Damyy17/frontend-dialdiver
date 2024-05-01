//
//  SearchBar.swift
//  dialdiver
//
//  Created by Damian Grosu on 30.04.2024.
//

import SwiftUI

struct SearchBar: View {
    
    @State var searchText = ""
    
    var body: some View {
        HStack{
            Image("search-icon")
                .resizable()
                .frame(width: 24, height: 24)
            TextField("Search..", text: $searchText)
                .font(.custom("Clash Display", size: 12))
                .foregroundColor(Color("main-text"))
                .disableAutocorrection(true)
                .overlay(
                    Image("cancel-icon")
                        .resizable()
                        .frame(width: 24, height: 24)
//                        .offset(x:10)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            searchText = ""
                        }
                        ,alignment: .trailing
                )
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 20).stroke(Color("tertiary-color"), lineWidth: 1))
        
    }
}

#Preview {
    SearchBar()
}
