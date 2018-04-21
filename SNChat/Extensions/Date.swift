//
//  Date.swift
//  SNChat
//
//  Created by StoneN on 2018/4/21.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import Foundation

extension Date {
    
    static func randomTime() -> Date {
        let oneYear: Double = 60 * 60 * 24 * 365
        let lower = Int(47 * oneYear)
        let upper = Int(48.3 * oneYear)
        let randomTimeInterval = TimeInterval(Int.randomInRange(range: Range(lower...upper)))
        let date = Date(timeIntervalSince1970: +randomTimeInterval)
        return date
    }
}
