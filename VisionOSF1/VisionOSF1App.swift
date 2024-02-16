//
//  RealityKitF1App.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 14/02/24.
//

import SwiftUI

@main
struct VisionOSF1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(detailView: AnyView(GPView()))
        }
    }
}
