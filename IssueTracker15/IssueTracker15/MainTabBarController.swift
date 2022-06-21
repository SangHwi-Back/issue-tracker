//
//  MainTabBarController.swift
//  IssueTracker15
//
//  Created by 백상휘 on 2022/06/20.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let issueVC = IssueListViewController()
        let navVC = IssueNavigationController(rootViewController: issueVC)
        navVC.tabBarItem.title = "이슈"
        navVC.tabBarItem.image = UIImage(systemName: "exclamationmark.circle")
        
        viewControllers = [navVC]
    }
}