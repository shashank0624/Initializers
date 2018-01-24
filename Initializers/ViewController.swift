//
//  ViewController.swift
//  Initializers
//
//  Created by Shashank Panwar on 1/24/18.
//  Copyright © 2018 Shashank Panwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       let now = Date()
        print("Current Date: \(now)")
        
        let TwentyMinutesAfter = Date(timeIntervalSinceNow: 20*60)
        print("Twenty Minutes After time will be \(TwentyMinutesAfter)")
        
        let TwentyMinutesAgo = Date(timeIntervalSinceNow: -20*60)
        print("Twenty Minutes Before time was \(TwentyMinutesAgo)")
        
        let referenceTo1970 = Date(timeIntervalSince1970: 20*60)
        print("Reference to 1970 is \(referenceTo1970)")
        
        let oneYear = TimeInterval(60*60*24*365)
        let newYear1971 = Date(timeIntervalSince1970: oneYear)
        print("After one year time will be \(newYear1971)")
        
        let calender = Calendar(identifier: .gregorian)
        var birthDateComponent = DateComponents()
        birthDateComponent.year = 1989
        birthDateComponent.month = 11
        birthDateComponent.day = 6
        birthDateComponent.timeZone = TimeZone(abbreviation: "UTC")
        
        let birthDate = calender.date(from: birthDateComponent)
        
        print("BirthDate: \(birthDate)")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let dateInFormat = dateFormatter.string(from: Date())
        print("Formatted Date: \(dateInFormat)")
    }

}


