//
//  PlacesList.swift
//  Places
//
//  Created by Leonid Lavrov on 06.02.2021.
//

import SwiftUI

struct PlacesList: View {
    var body: some View {
        List(places, id: \.id) { place in
            PlaceItem(place: place)
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
