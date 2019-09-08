//
//  VisitorTableViewController.swift
//  weibo-ios
//
//  Created by wuna on 2019/9/8.
//  Copyright © 2019 wuna. All rights reserved.
//

import UIKit

class VisitorTableViewController: UITableViewController {
    
    private var userLogin = false
    var visitorView: VisitorView?
    
    override func loadView() {
        print("come here")
        //super.loadView()
        userLogin ? super.loadView() : setupVisitorView()
    }
    
    private func setupVisitorView() {
        visitorView = VisitorView()
        //view = VisitorView(frame: UIScreen.main.bounds)
        //view.backgroundColor = UIColor.orange
        view = visitorView
    }
    
    
}
