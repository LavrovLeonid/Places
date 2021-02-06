//
//  PlacesList.swift
//  Places
//
//  Created by Leonid Lavrov on 06.02.2021.
//

import SwiftUI

struct PlacesList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredPlaces: Array<Place> {
        modelData.places.filter { place in (!showFavoritesOnly || place.isFavorite) }
    }
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredPlaces) { place in
                    NavigationLink(destination: PlaceInfo(place: place)) {
                        PlaceItem(place: place)
                    }
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
