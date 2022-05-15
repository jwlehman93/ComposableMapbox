//
//  RootView.swift
//  ComposableMapbox
//
//  Created by Jeremy Lehman on 5/15/22.
//
import SwiftUI
import ComposableArchitecture

struct RootView: View {
    let store: Store<RootState, RootAction>
    
    var body: some View {
        WithViewStore(self.store.stateless) { _ in
            MapboxMapView()
        }
    }
}
