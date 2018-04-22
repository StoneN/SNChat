//
//  SNChatCell.swift
//  SNChat
//
//  Created by StoneN on 2018/4/22.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit
import SnapKit

class SNChatCell: UITableViewCell {

    static let reuseIdentifier = "SNChatCell"
    
    lazy var avatar: UIImageView! = {
        let avatar = UIImageView()
        avatar.layer.cornerRadius = 5
        avatar.layer.masksToBounds = true
        contentView.addSubview(avatar)
        return avatar
    }()
    
    lazy var unreadCount: UILabel! = {
        let unreadCount = UILabel()
        unreadCount.layer.cornerRadius = 8
        unreadCount.layer.masksToBounds = true
        unreadCount.backgroundColor = UIColor.withHex(hexInt: 0xf45b6c)
        unreadCount.textColor = UIColor.white
        unreadCount.font = UIFont.systemFont(ofSize: 12)
        unreadCount.textAlignment = NSTextAlignment.center
        contentView.addSubview(unreadCount)
        return unreadCount
    }()
    
    lazy var name: UILabel! = {
        let name = UILabel()
        name.textColor = UIColor.black
        name.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        contentView.addSubview(name)
        return name
    }()
    
    lazy var lastMsg: UILabel! = {
        let lastMsg = UILabel()
        lastMsg.textColor = UIColor.withHex(hexInt: 0x4a4a4a)
        lastMsg.font = UIFont.systemFont(ofSize: 10)
        contentView.addSubview(lastMsg)
        return lastMsg
    }()
    
    lazy var time: UILabel! = {
        let time = UILabel()
        time.textColor = UIColor.withHex(hexInt: 0x9b9b9b)
        time.font = UIFont.systemFont(ofSize: 12)
        time.textAlignment = NSTextAlignment.right
        contentView.addSubview(time)
        return time
    }()
    
    lazy var bottomLine: UIView! = {
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.withHex(hexInt: 0xdcdcdc)
        contentView.addSubview(bottomLine)
        return bottomLine
    }()
    
    var unreadCountNumber: Int! {
        didSet {
            var width: Double = 0
            if (unreadCountNumber > 0 && unreadCountNumber < 10) {
                width = 16;
            } else if (unreadCountNumber >= 10 && unreadCountNumber < 100) {
                width = 22;
            } else if (unreadCountNumber >= 100) {
                width = 28;
            }
            unreadCount.snp.updateConstraints { make in
                make.width.equalTo(width)
            }
        }
    }
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initUI()
    }
    
    func initUI() {
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
            make.width.equalTo(70)
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
            make.height.equalTo(0.5)
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
