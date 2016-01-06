//
//  FirstViewController.swift
//  DeltaTester
//
//  Created by Svendsen, Runar on 05/01/16.
//  Copyright © 2016 FINN.no. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var store: Store!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func navigate(sender: UIButton) {
        if let tab = Tab(rawValue: sender.tag) {
            let action = SelectTab(selectedTab: tab)
            store.dispatch(action)
        }
    }
}

