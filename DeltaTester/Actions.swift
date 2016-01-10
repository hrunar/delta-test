//
//  Actions
//  
//
//  Created by Runar Svendsen on 10/01/16.
//  Copyright © 2016 FINN.no. All rights reserved.
//

import Delta

struct SelectTab: ActionType {
    let selectedTab: Tab
    
    func reduce(state: AppState) -> AppState {
        state.tab.value = selectedTab
        return state
    }
}