//
//  SNRecentChatDataManager.swift
//  SNChat
//
//  Created by StoneN on 2018/4/21.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import Foundation

enum DataManagerError: Error {
    case failedRequest
    case invalidResponse
    case unknown
}

final class SNRecentChatDataManager {
    
    private let userId: Int

    private init(userId: Int) {
        self.userId = userId
    }
    
    static let shared = SNRecentChatDataManager(userId: API_RecentChatList.userId)
    
    /*  -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   */
    
    typealias CompletionHandler = ([SNChatData], DataManagerError?) -> Void
    
    func recentChatData(completion: @escaping CompletionHandler) {
        DispatchQueue.main.async {
            self.didFinishGettingRecentChatData(completion: completion)
        }
    }
    
    fileprivate func didFinishGettingRecentChatData(completion: CompletionHandler) {
        var chatList = chats.map { (chatDict) -> SNChatData in
            return chatDataFromDict(dict: chatDict)
        }
        chatList.sort { (data1: SNChatData, data2: SNChatData) -> Bool in
            return data1.time.timeIntervalSince1970 > data2.time.timeIntervalSince1970
        }
        completion(chatList, nil)
    }
    
    /*  -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   */
    
    // MARK: - Example Chat Data
    private let chats: [[String: Any]] = [
        [
            "name": "StoneN_0",
            "avatar": "logo.png",
            "unreadCount": 6,
            "lastMsg": "你好！我是 StoneN_0~",
            "time": Date.randomTime(),
            ],
        [
            "name": "StoneN_1",
            "avatar": "logo.png",
            "unreadCount": 0,
            "lastMsg": "你好！我是 StoneN_1~",
            "time": Date.randomTime(),
            ],
        [
            "name": "StoneN_2",
            "avatar": "logo.png",
            "unreadCount": 999,
            "lastMsg": "你好！我是 StoneN_2~",
            "time": Date.randomTime(),
            ],
        [
            "name": "StoneN_3",
            "avatar": "logo",
            "unreadCount": 23,
            "lastMsg": "你好！我是 StoneN_3~",
            "time": Date.randomTime(),
            ],
        ]
    private func chatDataFromDict(dict: [String: Any]) -> SNChatData {
        return SNChatData(avatar: dict["avatar"] as! String,
                          name: dict["name"] as! String,
                          lastMsg: dict["lastMsg"] as! String,
                          time: dict["time"] as! Date,
                          unreadCount: dict["unreadCount"] as! Int)
    }
}
