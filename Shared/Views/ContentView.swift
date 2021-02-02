//
//  ContentView.swift
//  Shared
//
//  Created by Dan Hart on 2/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var properties: [Property] = []
    
    var body: some View {
        NavigationView {
            ForEach(properties, id: \.name) { property in
                Text(property.name)
            }
            
            /*
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Implement
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                    })
                }
            }*/
            
            .navigationTitle("Burrow")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
