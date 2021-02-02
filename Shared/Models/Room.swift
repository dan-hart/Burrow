//
//  Room.swift
//  Burrow (iOS)
//
//  Created by Dan Hart on 2/1/21.
//

import Foundation

struct Room: Identifiable {
    let id = UUID()
    
    let name: String
    let devices: [Device]?
}
