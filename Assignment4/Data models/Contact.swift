//
//  Contact.swift
//  Assignment4
//
//  Created by Esha Chiplunkar on 10/2/24.
//

import Foundation

struct Contact{
    var name: String?
    var email: String?
    var phone: String?
    var typeOfPhone: String?
    
    init(name: String? = nil, email: String? = nil, phone: String? = nil, typeOfPhone: String? = nil) {
        self.name = name
        self.email = email
        self.phone = phone
        self.typeOfPhone = typeOfPhone
    }
    
}
