//
//  SNRecentChatViewModel.swift
//  SNChat
//
//  Created by StoneN on 2018/4/21.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit

struct SNRecentChatViewModel {
    
    let chatList: [SNChatData]
    
    private let dateFormatter = DateFormatter()
    
    func avatar(for index: Int) -> UIImage? {
        return UIImage(named: chatList[index].avatar)
    }
    
    func unreadCountString(for index: Int) -> String {
        let countString = String(format: "%d", chatList[index].unreadCount)
        return chatList[index].unreadCount > 99 ? "99+" : countString
    }
    
    func unreadCountInt(for index: Int) -> Int {
        return chatList[index].unreadCount
    }
    
    func name(for index: Int) -> String {
        return chatList[index].name
    }
    
    func lastMsg(for index: Int) -> String {
        return chatList[index].lastMsg
    }
    
    func time(for index: Int) -> String {
        dateFormatter.dateFormat = "YYYY/MM/dd"
        return dateFormatter.string(from: chatList[index].time)
    }
    
    var numberOfSections: Int {
        return 1
    }
    
    var numberOfChats: Int {
        return chatList.count
    }
}



