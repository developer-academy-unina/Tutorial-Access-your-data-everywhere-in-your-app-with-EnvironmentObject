//
//  LightBulbEnvironmentObjectApp.swift
//  LightBulbEnvironmentObject
//
//  Created by Stefania Zinno for the Developer Academy on 12/10/21.
//
//

import SwiftUI

@main
struct DataFlowEnvironmentObjectApp: App {
    @StateObject var lightBulb = LightBulb(color: .yellow, intensity: 1)
    var body: some Scene {
        WindowGroup {
            OnOffView().environmentObject(lightBulb)
        }
    }
}
