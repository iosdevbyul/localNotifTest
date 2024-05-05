//
//  ContentView.swift
//  NotifTest
//
//  Created by COMATOKI on 2024-05-05.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    
    let store: StoreOf<NotifFeature>
    
    var body: some View {
        VStack {
            Button {
                store.send(.clickAlertButton)
            } label: {
                Text("Alert after 1 min")
            }
        }
        .padding()
        .onAppear(perform: {
            store.send(.startSetting)
        })
    }
}

