//
//  UserProfile.swift
//  onMap
//
//  Created by Marvellous Dirisu on 30/05/2022.
//

import Foundation

struct UserProfile: Codable {
    let firstName: String
    let lastName: String
    let nickname: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case nickname
    }
 
}
