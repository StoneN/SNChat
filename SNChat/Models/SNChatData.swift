//
//  SNChatData.swift
//  SNChat
//
//  Created by StoneN on 2018/4/21.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import Foundation

struct SNChatData: Codable {
    let avatar: String
    let name: String
    let lastMsg: String
    let time: Date
    let unreadCount: Int
    
}

