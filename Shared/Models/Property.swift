//
//  Property.swift
//  Burrow (iOS)
//
//  Created by Dan Hart on 2/1/21.
//

import Foundation

struct Property: Identifiable {
    let id = UUID()
    
    let name: String
    let description: String?
    let rooms: [Room]?
}
