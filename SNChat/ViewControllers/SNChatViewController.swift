//
//  SNChatViewController.swift
//  SNChat
//
//  Created by StoneN on 2018/4/22.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit

class SNChatViewController: UIViewController,
UITableViewDelegate, UITableViewDataSource {

    
    lazy var tableView: UITableView! = {
        let tableView = UITableView()
        self.view.addSubview(tableView)
        return tableView
    }()
    
    lazy var inputPanelView: SNChatInputPanelView! = {
        let inputPanelView = SNChatInputPanelView()
        self.view.addSubview(inputPanelView)
        return inputPanelView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.navigationItem.title = "chat"
        
        self.tableView!.separatorStyle = .none
        self.tableView!.register(SNChatCell.self, forCellReuseIdentifier: SNChatCell.reuseIdentifier)
        
        self.initUI()
        // Do any additional setup after loading the view.
    }
    
    func initUI() {
        
        inputPanelView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self.view)
            make.height.equalTo(50)
        }
        
        tableView.snp.makeConstraints { make in
            make.left.right.top.equalTo(self.view)
            make.bottom.equalTo(inputPanelView.snp.top)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
