//
//  SNChatCell.swift
//  SNChat
//
//  Created by StoneN on 2018/4/21.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit
import SnapKit

class SNChatCell: UITableViewCell {

    static let reuseIdentifier = "SNChatCell"
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var unreadCount: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var lastMsg: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var bottomLine: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }

    func initUI() {
        
        avatar.layer.cornerRadius = 5
        avatar.layer.masksToBounds = true
        
        unreadCount.layer.cornerRadius = 8
        unreadCount.layer.masksToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
