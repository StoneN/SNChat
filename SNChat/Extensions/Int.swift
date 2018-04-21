//
//  Int.swift
//  SNChat
//
//  Created by StoneN on 2018/4/21.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import Foundation

extension Int {
    static func randomInRange(range: Range<Int>) -> Int {
        let count = UInt32(range.upperBound - range.lowerBound)
        return Int(arc4random_uniform(count)) + range.lowerBound
    }
}
