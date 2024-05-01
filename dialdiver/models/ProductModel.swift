//
//  ProductModel.swift
//  dialdiver
//
//  Created by Damian Grosu on 30.04.2024.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: String
    let siteOrigin: String
}
