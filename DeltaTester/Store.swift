//
//  Store.swift
//  DeltaTester
//
//  Created by Svendsen, Runar on 06/01/16.
//  Copyright © 2016 FINN.no. All rights reserved.
//

import Delta

enum Tab: Int {
    case Markets = 0, Feed, User
}

struct Store: StoreType {
    var state: ObservableProperty<AppState>
}

struct AppState {
    let tab = ObservableProperty<Tab>(.Feed)
}

struct SelectTab: ActionType {
    let selectedTab: Tab
    
    func reduce(state: AppState) -> AppState {
        state.tab.value = selectedTab
        return state
    }
}