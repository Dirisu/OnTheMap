//
//  StudentInformation.swift
//  onMap
//
//  Created by Marvellous Dirisu on 30/05/2022.
//

import Foundation

struct StudentInformation: Codable {
    let objectId: String?
    let uniqueKey: String
    let firstName: String
    let lastName: String?
    let mapString: String?
    let mediaURL: String?
    let latitude: Double?
    let longitude: Double?
    let createdAt: String?
    let updatedAt: String?
}
