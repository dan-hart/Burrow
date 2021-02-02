//
//  ContentView.swift
//  Shared
//
//  Created by Dan Hart on 2/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var properties: [Property] = []
    @State private var isShowingAddPropertyModal: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(properties) { property in
                    NavigationLink(
                        destination: PropertyDetailView(property: property),
                        label: {
                            Text(property.name)
                        })
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isShowingAddPropertyModal.toggle()
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                    })
                }
            }
            
            .navigationTitle("Burrow")
        }
        .sheet(isPresented: $isShowingAddPropertyModal) {
            NavigationView {
                AddPropertyView(properties: $properties)
                    
                .navigationTitle("Add Property")
            }
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
