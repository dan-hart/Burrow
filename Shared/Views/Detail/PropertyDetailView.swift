//
//  PropertyDetailView.swift
//  Burrow (iOS)
//
//  Created by Dan Hart on 2/1/21.
//

import SwiftUI

struct PropertyDetailView: View {
    var property: Property
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(property.description ?? "")
                .font(.subheadline)
            List {
                ForEach(property.rooms ?? [], id: \.name) { room in
                    Text(room.name)
                }
            }
        }.padding()
        
        .navigationTitle(property.name)
    }
}

struct PropertyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyDetailView(property: Property(name: "House", description: "A nice house", rooms: nil))
    }
}
