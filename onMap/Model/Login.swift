//
//  Login.swift
//  onMap
//
//  Created by Marvellous Dirisu on 30/05/2022.
//

import Foundation

struct Login: Codable {
    let account: Account
    let session: Session
}

struct Account: Codable {
    let registered: Bool
    let key: String
}


