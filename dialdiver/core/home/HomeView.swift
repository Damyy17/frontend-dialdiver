//
//  HomeView.swift
//  dialdiver
//
//  Created by Damian Grosu on 26.04.2024.
//

import SwiftUI

let products: [Product] = [
        Product(imageName: "product-image", title: "Mackbook Pro", price: "100", siteOrigin: "Site 1"),
        Product(imageName: "product-image", title: "Mackbook Pro 16", price: "200", siteOrigin: "Site 2"),
        Product(imageName: "product-image", title: "Mackbook Pro 14", price: "300", siteOrigin: "Site 3"),
        // Add more products as needed
    ]

struct HomeView: View {
    
    var body: some View {
        VStack(){
            HStack(){
                VStack(spacing: 2){
                    HStack{
                        Image("site-icon")
                            .resizable()
                            .frame(width: 12, height: 12)
                        Text("Darwin.md")
                            .font(.custom("Clash Display", size: 16))
                            .fontWeight(.medium)
                    }
                    Text("website")
                        .font(.custom("Clash Display", size: 16))
                        .fontWeight(.regular)
                }
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(Color("bg2-color"))
                        .frame(width: 48, height: 48)
                    Image("filter")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
            }
            SearchBar()
            HStack{
                Text("Recommended for you")
                    .font(.custom("Clash Display", size: 18))
                    .fontWeight(.semibold)
                Spacer()
                HStack(spacing: 2){
                    Text("See all")
                        .font(.custom("Clash Display", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color("tertiary-color"))
                    Image("arrow-right")
                        .resizable()
                        .frame(width: 12, height: 12)
                }
            }
            .padding(.top, 12)
            
            ScrollView(.horizontal, showsIndicators: false) {
                   HStack(spacing: 16) {
                       ForEach(products, id: \.id) { product in
                           CustomProductCard(
                            imageName: product.imageName,
                            title: product.title,
                            price: product.price,
                            siteOrigin: product.siteOrigin)
                       }
                   }
                   .padding(EdgeInsets(top: 0, leading: 8, bottom: 12, trailing: 0))
//                   .frame(height: 300)
               }
            
            HStack{
                Text("Best Prices")
                    .font(.custom("Clash Display", size: 18))
                    .fontWeight(.semibold)
                Spacer()
                HStack(spacing: 2){
                    Text("See all")
                        .font(.custom("Clash Display", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color("tertiary-color"))
                    Image("arrow-right")
                        .resizable()
                        .frame(width: 12, height: 12)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                   HStack(spacing: 16) {
                       ForEach(products, id: \.id) { product in
                           CustomProductCard(
                            imageName: product.imageName,
                            title: product.title,
                            price: product.price,
                            siteOrigin: product.siteOrigin)
                       }
                   }
                   .padding(EdgeInsets(top: 0, leading: 8, bottom: 12, trailing: 0))
//                   .frame(height: 300)
               }
            
            Spacer()
        }
        .padding(16)
    }
}

#Preview {
    HomeView()
}
