//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by Vodnikova Daria Konstantinovna on 07.08.2022.
// имя берется из приложения contacts

import Foundation

class Birthday {
    let firstName: String
    let lastName: String
    let birthdate: Date
    
    init(firstName: String, lastName: String, birthdate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
    }
}
