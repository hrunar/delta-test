//
//  AppDelegate.swift
//  DeltaTester
//
//  Created by Svendsen, Runar on 05/01/16.
//  Copyright © 2016 FINN.no. All rights reserved.
//

import UIKit
import Delta

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var store = Store(state: ObservableProperty(AppState()))
        
        let tabBarController = TabbarController()
        tabBarController.store = store
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        tabBarController.viewControllers = [Tab.Markets, Tab.Feed, Tab.User].map { (tab) -> UIViewController in
            let vc = storyboard.instantiateViewControllerWithIdentifier("firstViewController")
            let title = tabBarController.titleForTab(tab)
            vc.title = title
            vc.view.backgroundColor = tabBarController.backgroundColorForTab(tab)
            if let vc = vc as? FirstViewController {
                vc.store = store
            }
            return vc
        }
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window.backgroundColor = UIColor.blackColor()
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }

}

