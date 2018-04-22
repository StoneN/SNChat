//
//  SNChatInputPanelViewDelegate.swift
//  SNChat
//
//  Created by StoneN on 2018/4/22.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import Foundation

protocol SNChatInputPanelViewDelegate: NSObjectProtocol {
    
    func inputPanelView(panelView: SNChatInputPanelView, sendText: NSString)
    
    
}
