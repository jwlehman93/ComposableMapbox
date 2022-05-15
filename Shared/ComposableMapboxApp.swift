//
//  ComposableMapboxApp.swift
//  Shared
//
//  Created by Jeremy Lehman on 5/14/22.
//

import SwiftUI
import ComposableArchitecture

@main
struct ComposableMapboxApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(store: Store(initialState: RootState(),
                                  reducer: rootReducer,
                                  environment: .live(environment: RootEnvironment())))
        }
    }
}
