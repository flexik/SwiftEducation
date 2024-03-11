//
//  AppDelegate.swift
//  TestProject#1
//
//  Created by Артем Сиренко on 3/11/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow()
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

