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
                NavigationLink(destination: PlaceInfo(place: place)) {
                    PlaceItem(place: place)
                }
            }.navigationTitle("Places")
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            PlacesList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
