//
//  PlacesList.swift
//  Places
//
//  Created by Leonid Lavrov on 06.02.2021.
//

import SwiftUI

struct PlacesList: View {
    var body: some View {
        NavigationView{
            List(places) { place in
                NavigationLink(destination: PlaceInfo()) {
                    PlaceItem(place: place)
                }
            }.navigationTitle("Places")
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
