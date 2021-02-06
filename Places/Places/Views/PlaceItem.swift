//
//  PlaceItem.swift
//  Places
//
//  Created by Leonid Lavrov on 31.01.2021.
//

import SwiftUI

struct PlaceItem: View {
    var place: Place
    
    var body: some View {
        HStack {
            place.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(place.name)

            Spacer()
        }
    }
}

struct PlaceItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlaceItem(place: places[0])
            PlaceItem(place: places[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
