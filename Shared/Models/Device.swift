//
//  Device.swift
//  Burrow (iOS)
//
//  Created by Dan Hart on 2/1/21.
//

import Foundation

struct Device: Identifiable {
    let id = UUID()
    
    let name: String
    let components: [Component]?
}
