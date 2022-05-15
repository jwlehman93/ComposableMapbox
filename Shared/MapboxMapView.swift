//
//  MapboxMapView.swift
//  ComposableMapbox
//
//  Created by Jeremy Lehman on 5/15/22.
//

import Foundation
import SwiftUI
import MapboxMaps

struct MapboxMapView: UIViewControllerRepresentable {
    typealias UIViewControllerType = MapboxViewController
    
    func makeUIViewController(context: Context) -> MapboxViewController {
        return MapboxViewController()
    }
    
    func updateUIViewController(_ uiViewController: MapboxViewController, context: Context) {
    }
    
}

class MapboxViewController: UIViewController {
    internal var mapView: MapView!
    
    override func viewDidLoad() {
        let accessToken = Bundle.main.object(forInfoDictionaryKey: "MBXAccessToken") as? String ?? ""
        let myResourceOptions = ResourceOptions(accessToken: accessToken)
        let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOptions)
        mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(mapView)
    }
}
