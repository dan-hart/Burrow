//
//  AddPropertyView.swift
//  Burrow (iOS)
//
//  Created by Dan Hart on 2/1/21.
//

import SwiftUI

struct AddPropertyView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var properties: [Property]
    @State private var propertyName: String = ""
    @State private var propertyDescription: String = ""
    
    var body: some View {
        Form {
            TextField("Name", text: $propertyName)
            TextField("Descriiption", text: $propertyDescription)
            
            Button("Save", action: {
                self.presentationMode.wrappedValue.dismiss()
                properties.append(Property(name: propertyName, description: propertyDescription, rooms: nil))
            })
        }
    }
}

struct AddPropertyView_Previews: PreviewProvider {
    static var previews: some View {
        AddPropertyView(properties: .constant([]))
    }
}
