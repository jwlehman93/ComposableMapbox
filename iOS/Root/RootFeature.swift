//
//  RootFeature.swift
//  ComposableMapbox
//
//  Created by Jeremy Lehman on 5/15/22.
//

import Foundation
import ComposableArchitecture

struct RootState {
    
}

enum RootAction {
    
}

struct RootEnvironment {
    
}

let rootReducer = Reducer<
    RootState,
    RootAction,
    SystemEnvironment<RootEnvironment>
>.empty


