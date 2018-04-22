//
//  SNChatInputPanelView.swift
//  SNChat
//
//  Created by StoneN on 2018/4/22.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit

class SNChatInputPanelView: UIView {

    var delegate: SNChatInputPanelViewDelegate?
    
    lazy var inputBarView: SNChatInputBarView! = {
        let inputBarView = SNChatInputBarView()
        self.addSubview(inputBarView)
        return inputBarView
    }()
    
    lazy var emotionInputView: SNChatEmotionInputView! = {
        return SNChatEmotionInputView(frame: CGRect(x: 0, y: 0, width: g_ScreenWidth, height: 184))
    }()
    
    var menuInputView: SNChatMenuInputView! = {
        return SNChatMenuInputView(frame: CGRect(x: 0, y: 0, width: g_ScreenWidth, height: 184))
    }()
    
    lazy var beAtUsers: Array<SNUserBaseData>? = {
        return Array()
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.initUI()
    }
//    init(with delegate: SNChatInputPanelViewDelegate?, of ChatSession: SNChatSession) {
//        super.init(frame: CGRect(x: 0, y: 0, width: g_ScreenWidth, height: 50))
//        self.backgroundColor = UIColor.withHex(hexInt: 0xf7f7f7)
//        self.delegate = delegate
//        // self.inputBarView.textView.delegate = self
//        // self.emotionInputView.delegate = self
//        self.initUI()
//    }
    
    func initUI() {
        inputBarView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
    
    func hideKeyBoard() {}
    
    func atUser(user: SNUserBaseData) {}
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
