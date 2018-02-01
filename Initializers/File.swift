//
//  File.swift
//  Initializers
//
//  Created by Shashank Panwar on 1/24/18.
//  Copyright © 2018 Shashank Panwar. All rights reserved.
//

import Foundation

class Animal{
    
    init(){
        
    }
}


class Person: Animal{
    
    var name: String
    var age: Int
    var dateOfBirth: NSDate
    
    init(age: Int, name: String, dateOfBirth: NSDate) {
        self.age = age
        self.name = name
        self.dateOfBirth = dateOfBirth
        super.init()
    }
    
    convenience init(name: String, dateOfBirth:NSDate){
        
        let calender = Calendar.current
        
        let ageComponent = calender.dateComponents([.year], from: dateOfBirth as Date, to: Date())
        
        let age = ageComponent.year
        guard let ageInYear = age else{
            self.init(age: 0, name: name, dateOfBirth: dateOfBirth)
            return
        }
        print("Age :\(ageInYear)")
        self.init(age: age!, name: name, dateOfBirth: dateOfBirth)
    }
    
}
