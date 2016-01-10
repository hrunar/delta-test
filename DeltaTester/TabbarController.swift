//
//  TabbarController.swift
//  DeltaTester
//
//  Created by Svendsen, Runar on 06/01/16.
//  Copyright © 2016 FINN.no. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {

    var store: Store! {
        didSet {
            print("got Store!")
            store.state.value.tab.subscribe { (newTab: Tab) in
                print("tab changed, new tab \(newTab)")
                self.selectedIndex = newTab.rawValue
            }
        }
    }
    
    func backgroundColorForTab(tab: Tab) -> UIColor {
        switch tab {
        case .Markets:
            return UIColor.grayColor()
        case .Feed:
            return UIColor.greenColor()
        case .User:
            return UIColor.yellowColor()
        }
    }
    
    func storyboardIdentifierForTab(tab: Tab) -> String {
        switch tab {
        case .Markets:
            return "firstViewController"
        case .Feed:
            return "secondViewController"
        case .User:
            return "thirdViewController"
        }
    }
}
