//
//  FirstViewController.swift
//  DeltaTester
//
//  Created by Svendsen, Runar on 05/01/16.
//  Copyright © 2016 FINN.no. All rights reserved.
//

import UIKit
import Delta


class ViewController : UIViewController {

    var store: Store!
    
    @IBAction func navigate(sender: UIButton) {
        if let tab = Tab(rawValue: sender.tag) {
            let action = SelectTab(selectedTab: tab)
            store.dispatch(action)
        }
    }
}

