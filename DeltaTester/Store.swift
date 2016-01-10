//
//  Store.swift
//  DeltaTester
//
//  Created by Svendsen, Runar on 06/01/16.
//  Copyright © 2016 FINN.no. All rights reserved.
//

import Delta

struct Store: StoreType {
    var state: ObservableProperty<AppState>
}

struct AppState {
    let tab = ObservableProperty<Tab>(.Feed)
}

