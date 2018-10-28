//
//  AppDelegate.swift
//  RoundedTabBarControllerExample
//
//  Created by Erid Bardhaj on 10/28/18.
//  Copyright © 2018 Erid Bardhaj. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    // MARK: - Properties
    // MARK: Mutable
    
    var window: UIWindow?
    
    
    // MARK: - Protocol Conformance
    // MARK: UIApplicationDelegate
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupRootViewController()
        
        return true
    }
    
    
    // MARK: - Setups
    
    private func setupRootViewController() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = RoundedTabBarController()
        window.makeKeyAndVisible()
        self.window = window
    }
}

