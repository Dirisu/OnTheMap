//
//  StudentsData.swift
//  onMap
//
//  Created by Marvellous Dirisu on 01/06/2022.
//

import Foundation

class StudentsData: NSObject {

    var students = [StudentInformation]()

    class func sharedInstance() -> StudentsData {
        struct Singleton {
            static var sharedInstance = StudentsData()
        }
        return Singleton.sharedInstance
    }

}
