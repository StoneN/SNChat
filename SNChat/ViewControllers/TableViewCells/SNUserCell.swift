//
//  SNUserCell.swift
//  SNChat
//
//  Created by StoneN on 2018/4/22.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit
import SnapKit

class SNUserCell: UITableViewCell {

    static let reuseIdentifier = "SNUserCell"
    
    lazy var avatar: UIImageView! = {
        let avatar = UIImageView(image: UIImage(named: "avatar_user_default"))
        contentView.addSubview(avatar)
        return avatar
    }()
    
    lazy var name: UILabel! = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        name.textColor = UIColor.black
        contentView.addSubview(name)
        return name
    }()
    
    lazy var bottomLine: UIView! = {
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.withHex(hexInt: 0xdcdcdc)
        contentView.addSubview(bottomLine)
        return bottomLine
    }()
    
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
            make.size.equalTo(CGSize(width: 30, height: 30))
        }
        
        name.snp.makeConstraints { make in
            make.left.equalTo(self.avatar.snp.right).offset(14)
            make.right.equalTo(self.contentView.snp.right).offset(-12)
            make.centerY.equalTo(self.contentView)
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
