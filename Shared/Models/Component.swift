//
//  Component.swift
//  Burrow (iOS)
//
//  Created by Dan Hart on 2/1/21.
//

import Foundation

enum ComponentType: String, CaseIterable {
    case battery = "Battery"
    case lightBulb = "Light Bulb"
    case filter = "Filter"
}

struct Component {
    let name: String
    let type: ComponentType
    let quantity: Int
    let description: String
    let installedOn: Date
    let replacementFrequencyInDays: Int
}
