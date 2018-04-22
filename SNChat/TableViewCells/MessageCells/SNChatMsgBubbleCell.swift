//
//  SNChatMsgBubbleCell.swift
//  SNChat
//
//  Created by StoneN on 2018/4/22.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit

let SNChatMsgAvatarWidth: CGFloat = 40

let SNChatMsgAvatarNameSpace: CGFloat = 13

class SNChatMsgBubbleCell: SNChatMsgBaseCell {

    
    var errorImageView: UIImageView!
    
    var leftBubbleColor: UIColor!
    var rightBubbleColor: UIColor!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initUI()
    }

    func initUI() {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
