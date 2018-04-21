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
    
//    @IBOutlet weak var avatar: UIImageView!
//    @IBOutlet weak var unreadCount: UILabel!
//    @IBOutlet weak var name: UILabel!
//    @IBOutlet weak var lastMsg: UILabel!
//    @IBOutlet weak var time: UILabel!
//    @IBOutlet weak var bottomLine: UIView!

    lazy var avatar: UIImageView! {
        var avatar = UIImageView()
        avatar.layer.cornerRadius = 5
        avatar.layer.masksToBounds = true
        return avatar
    }
    lazy var unreadCount: UILabel! = UILabel()
    lazy var name: UILabel! = UILabel()
    lazy var lastMsg: UILabel! = UILabel()
    lazy var time: UILabel! = UILabel()
    lazy var bottomLine: UIView! = UIView()

    
    var unreadCountNumber: Int! {
        didSet {
            if unreadCountNumber != nil {
                updateUnreadCountUI()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }

    func initUI() {
        contentView.addSubview(avatar)
        contentView.addSubview(unreadCount)
        contentView.addSubview(name)
        contentView.addSubview(lastMsg)
        contentView.addSubview(time)
        contentView.addSubview(bottomLine)
        
        avatar.snp.makeConstraints { make in
            make.left.equalTo(self.contentView).offset(12)
            make.centerY.equalTo(self.contentView)
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        
        unreadCount.snp.makeConstraints { make in
            make.right.equalTo(self.avatar.snp.right).offset(6)
            make.top.equalTo(self.avatar.snp.top).offset(-6)
            make.height.equalTo(16)
            make.width.equalTo(0)
        }
        
        time.snp.makeConstraints { make in
            make.right.equalTo(self.contentView).offset(-12)
            make.top.equalTo(self.avatar)
            make.width.equalTo(64)
        }
        
        name.snp.makeConstraints { make in
            make.left.equalTo(self.avatar.snp.right).offset(14)
            make.top.equalTo(self.avatar.snp.top)
            make.right.equalTo(self.time.snp.left).offset(-12)
        }
        
        lastMsg.snp.makeConstraints { make in
            make.left.equalTo(self.avatar.snp.right).offset(14)
            make.bottom.equalTo(self.avatar.snp.bottom)
            make.right.equalTo(self.contentView)
        }
        
        bottomLine.snp.makeConstraints { make in
            make.left.equalTo(self.avatar)
            make.right.equalTo(self.contentView)
            make.bottom.equalTo(self.contentView)
            make.height.equalTo(1)
        }
        
        avatar.layer.cornerRadius = 5
        avatar.layer.masksToBounds = true
        
        unreadCount.layer.cornerRadius = 8
        unreadCount.layer.masksToBounds = true
    }
    
    func updateUnreadCountUI() {
        var width: Double = 0
        if (unreadCountNumber > 0 && unreadCountNumber < 10) {
            width = 16;
        } else if (unreadCountNumber >= 10 && unreadCountNumber < 100) {
            width = 22;
        } else if (unreadCountNumber >= 100) {
            width = 28;
        }
        

//        unreadCount.snp.updateConstraints { (make) in
//            make.width.equalTo(width)
//        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
