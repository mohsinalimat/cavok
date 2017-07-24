//
//  Timeslot.swift
//  CAVOK
//
//  Created by Juho Kolehmainen on 27/09/2016.
//  Copyright © 2016 Juho Kolehmainen. All rights reserved.
//

import Foundation

public struct Timeslot {
    let date: Date
    let color: UIColor
    
    let title: String
    
    init(date: Date, color: UIColor, title: String? = nil) {
        self.date = date
        self.color = color
        if let title = title {
            self.title = title
        } else {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            self.title = formatter.string(from: date)
        }
    }
}
