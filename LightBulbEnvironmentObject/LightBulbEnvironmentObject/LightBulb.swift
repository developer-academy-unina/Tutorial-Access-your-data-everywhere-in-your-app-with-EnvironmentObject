//
//  LightBulb.swift
//  LightBulbEnvironmentObject
//
//  Created by Stefania Zinno for the Developer Academy on 21/10/21.
//
//

import Foundation
import SwiftUI

class LightBulb: ObservableObject {
    
    let light = Image(systemName: "lightbulb.fill")
    
    internal init(color: Color, intensity: Double) {
        self.color = color
        self.intensity = intensity
    }
    
    @Published var color: Color
    @Published var intensity: Double
}

