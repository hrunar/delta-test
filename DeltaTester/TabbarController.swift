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
                print("tab changed, new tab \(self.titleForTab(newTab))")
                self.selectedIndex = newTab.rawValue
            }
        }
    }
    
    func titleForTab(tab: Tab) -> String {
        switch tab {
        case .Markets:
            return "Markeder"
        case .Feed:
            return "Siste nytt"
        case .User:
            return "Min FINN"
        }
    }
    
    func backgroundColorForTab(tab: Tab) -> UIColor {
        switch tab {
        case .Markets:
            return UIColor.purpleColor()
        case .Feed:
            return UIColor.greenColor()
        case .User:
            return UIColor.yellowColor()
        }
    }
}
