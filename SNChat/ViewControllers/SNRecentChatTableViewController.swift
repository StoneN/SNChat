//
//  SNRecentChatTableViewController.swift
//  SNChat
//
//  Created by StoneN on 2018/4/18.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit

class SNRecentChatTableViewController: UITableViewController {

    var viewModel: SNChatViewModel? {
        didSet {
            DispatchQueue.main.async { self.updateView() }
        }
    }
    
    func updateView() {
        if viewModel != nil {
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "最近会话"
        self.navigationItem.rightBarButtonItem = self.editButtonItem
     
        self.tableView!.separatorStyle = .none
        self.tableView!.register(UINib(nibName:"SNChatCell", bundle:nil),forCellReuseIdentifier:"SNChatCell")
    }

    
    override func viewWillAppear(_ animated: Bool) {
        loadData()
    }
    
    func loadData() {
        SNRecentChatDataManager.shared.recentChatData { (chatList, _) in
            self.viewModel = SNChatViewModel(chatList: chatList)
        }
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let _ = Date.randomTime()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        guard let viewModel = viewModel else { return 0 }
        return viewModel.numberOfSections
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else { return 0 }
        return viewModel.numberOfChats
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SNChatCell.reuseIdentifier, for: indexPath) as? SNChatCell
        
        guard let chat = cell else {
            fatalError("Unexpected table view cell.")
        }
        
        if let viewModel = viewModel {
            chat.avatar.image = viewModel.avatar(for: indexPath.row)
            chat.unreadCount.text = viewModel.unreadCountString(for: indexPath.row)
            chat.name.text = viewModel.name(for: indexPath.row)
            chat.lastMsg.text = viewModel.lastMsg(for: indexPath.row)
            chat.time.text = viewModel.time(for: indexPath.row)
        }
        return chat
    }

    
    
}
