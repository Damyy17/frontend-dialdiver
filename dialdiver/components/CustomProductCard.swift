//
//  CustomProductCard.swift
//  dialdiver
//
//  Created by Damian Grosu on 30.04.2024.
//

import SwiftUI

struct CustomProductCard: View {
    let imageName: String
    let title: String
    let price: String
    let siteOrigin: String
    
    var body: some View {
        ZStack{
            ZStack{
                VStack(alignment: .leading){
                    Image(imageName)
                        .resizable()
                        .frame(width: 171, height: 175)
                    
                    VStack(alignment: .leading,spacing: 4){
                        Text(title)
                            .font(.custom("Clash Display", size: 16))
                            .foregroundColor(Color("main-text"))
                            .fontWeight(.semibold)
                        HStack(spacing: 4){
                            Image("wallet-icon")
                                .resizable()
                                .frame(width: 16, height: 16)
                            Text(price + " mdl")
                                .font(.custom("Clash Display", size: 16))
                                .foregroundColor(Color("main-text"))
                                .fontWeight(.regular)
                        }
                        
                        HStack(spacing: 4){
                            Image("site-icon")
                                .resizable()
                                .frame(width: 16, height: 16)
                            Text(siteOrigin)
                                .font(.custom("Clash Display", size: 16))
                                .foregroundColor(Color("main-text"))
                                .fontWeight(.regular)
                        }
                    }
                    .padding(8)
                    
//                    Spacer()
                }
            }
        }
        .frame(width: 171)
        .background(Color("bg-color"))
        .clipShape(RoundedRectangle(cornerRadius:8))
        .shadow(
            color:Color("main-text").opacity(0.15),
            radius: 5, x: 0, y: 0
        )
    }
}

#Preview {
    CustomProductCard(imageName: "product-image", title: "Iphone 15 Pro", price: "25.000", siteOrigin: "Darwin.md")
}
