//
//  NotifFeature.swift
//  NotifTest
//
//  Created by COMATOKI on 2024-05-05.
//

import Foundation
import ComposableArchitecture

class NotifFeature: Reducer {
    let notifManager = NotifManager()

    struct State: Equatable {
        var time = 0
    }
    
    enum Action {
        case clickAlertButton
        case startSetting
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .clickAlertButton:
                self.notifManager.startNotif(min: 1)
                return .none
            case .startSetting:
                self.notifManager.requestPermission()
                return .none
            }
        }
    }
}
