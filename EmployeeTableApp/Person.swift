//
//  Person.swift
//  EmployeeTableApp
//
//  Created by Bogdan Baskakov on 09/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

var namesArray = ["Angelina", "Halle", "Bill", "Brus", "Jim"]
var surnamesArray = ["Smith", "Johnson", "Williams", "Jones", "Brown"]
var emailsArray = ["sdsu1@email.com",
                   "42021@email.com",
                   "sdoga@email.com",
                   "Dofkd@email.com",
                   "Pommfl@email.com"]
var phoneNumbersArray = ["+7(000)322-23-22",
                         "+7(230)722-74-25",
                         "+7(670)235-56-57",
                         "+7(843)495-12-04",
                         "+7(454)572-93-21"]

struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String

    static func getPersons() -> [Person] {
        var randomPersons: [Person] = []

        if namesArray.count == surnamesArray.count &&
            namesArray.count == emailsArray.count &&
            namesArray.count == phoneNumbersArray.count {
            while namesArray.count > 0 {
                let firstname = namesArray.remove(at: Int.random(in: 0..<namesArray.count))
                let surname = surnamesArray.remove(at: Int.random(in: 0..<surnamesArray.count))
                let email = emailsArray.remove(at: Int.random(in: 0..<emailsArray.count))
                let phoneNum = phoneNumbersArray.remove(at: Int.random(in: 0..<phoneNumbersArray.count))
                
                randomPersons.append(Person(name: firstname,
                                            surname: surname,
                                            email: email,
                                            phoneNumber: phoneNum))
            }
        }
        
        return randomPersons
    }
}
