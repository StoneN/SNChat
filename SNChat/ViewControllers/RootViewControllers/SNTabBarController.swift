//
//  SNTabBarController.swift
//  SNChat
//
//  Created by StoneN on 2018/4/14.
//  Copyright © 2018年 StoneN. All rights reserved.
//

import UIKit

class SNTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadChildViewControllers()
        // Do any additional setup after loading the view.
    }

    func loadChildViewControllers() {
        let recentChatTableVC = SNRecentChatTableViewController()
        let recentChatNC = UINavigationController(rootViewController: recentChatTableVC)
        recentChatNC.tabBarItem.title = "最近会话"
        
        
        let addressBookTableVC = SNAddressBookTableViewController()
        let addressBookNC = UINavigationController(rootViewController: addressBookTableVC)
        addressBookNC.tabBarItem.title = "通讯录"
        
        self.setViewControllers([recentChatNC, addressBookNC], animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
