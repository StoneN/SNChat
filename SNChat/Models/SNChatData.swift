//
//  SNChatData.swift
//  SNChat
//
//  Created by StoneN on 2018/4/21.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import Foundation

enum SNChatType: Int {
    case personal
    case group
}

struct SNChatData: Codable {
    let type: SNChatType.RawValue
    let avatar: String
    let name: String
    let lastMsg: String
    let time: Date
    let unreadCount: Int

    // only personal chat:
    let userId: Int
    
    // only group chat:
    let lastMsgOwnerName: String
    let groupId: Int
}

