//
//  SceneDelegate.swift
//  IssueTracker15_1
//
//  Created by 박진섭 on 2022/06/13.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let rootViewController =  ViewController()
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}

