//
//  User.swift
//  dialdiver
//
//  Created by Damian Grosu on 26.04.2024.
//

import Foundation

struct User : Identifiable, Codable {
    var id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Grosu Damian", email: "grdamian@mail.yo")
}
