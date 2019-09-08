//
//  MainViewController.swift
//  weibo-ios
//
//  Created by wuna on 2019/9/8.
//  Copyright © 2019 wuna. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildViewControllers()
    }

}

//MARK - 设置界面
extension MainViewController {
    
    private func addChildViewControllers() {
        tabBar.tintColor = UIColor.orange
        self.addChildViewController(vc: HomeTableViewController(), title: "首页", imageNmae: "tabbar_home")
        self.addChildViewController(vc: DiscoverTableViewController(), title: "发现", imageNmae: "tabbar_discover")
        self.addChildViewController(vc: MessageTableViewController(), title: "消息", imageNmae: "tabbar_message_center")
        self.addChildViewController(vc: ProfileTableViewController(), title: "我", imageNmae: "tabbar_profile")
    }
    
    //添加控制器
    private func addChildViewController(vc: UIViewController, title: String, imageNmae: String) {
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageNmae)
        let nav = UINavigationController(rootViewController: vc);
        addChild(nav)
    }
}
