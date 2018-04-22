//
//  SNChatMsgBaseCell.swift
//  SNChat
//
//  Created by StoneN on 2018/4/22.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit

fileprivate let k_AvatarWidth: CGFloat = 40
fileprivate let k_OtherAvatarLeftSpace: CGFloat = 12
fileprivate let k_MeAvatarLeftSpace: CGFloat = g_ScreenWidth - k_OtherAvatarLeftSpace - k_AvatarWidth

class SNChatMsgBaseCell: UITableViewCell {

    
    
    var msgType: SNChatMsgType = .other
    var avatar: UIImageView!
//    var name: UILabel!
    var msgContainerView: UIImageView!
    
    // MARK: - Init
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initBaseUI()
    }
    
    func initBaseUI() {
        avatar = UIImageView()
        contentView.addSubview(avatar)
        let leftSpace = msgType == .me ? k_MeAvatarLeftSpace : k_OtherAvatarLeftSpace
        avatar.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(leftSpace)
            make.width.height.equalTo(k_AvatarWidth)
            make.top.equalTo(contentView)
        }
        
        msgContainerView = UIImageView()
        msgContainerView.isUserInteractionEnabled = true
        contentView.addSubview(msgContainerView)
        msgContainerView.snp.makeConstraints { make in
            make.
        }
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
