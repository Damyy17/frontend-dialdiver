//
//  ProductDetailsView.swift
//  dialdiver
//
//  Created by Damian Grosu on 01.05.2024.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Image("back-icon")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Spacer()

                Text("Product Details")
                    .font(.custom("Clash Display", size: 16))
                    .foregroundColor(Color("main-text"))
                    .fontWeight(.medium)
                    
                Spacer()
            }
            
            
            Spacer()
        }
        .padding(16)
    }
}

#Preview {
    ProductDetailsView()
}
