//
//  NotifTestApp.swift
//  NotifTest
//
//  Created by COMATOKI on 2024-05-05.
//

import SwiftUI
import ComposableArchitecture

@main
struct NotifTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(initialState : NotifFeature.State()) {
                NotifFeature()
            })
        }
    }
}
