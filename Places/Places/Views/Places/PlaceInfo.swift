//
//  PlaceInfo.swift
//  Places
//
//  Created by Leonid Lavrov on 06.02.2021.
//

import SwiftUI

struct PlaceInfo: View {
    @EnvironmentObject var modelData: ModelData
    var place: Place
    
    var placeIndex: Int {
        modelData.places.firstIndex(where: { $0.id == place.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: place.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: place.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(place.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.places[placeIndex].isFavorite)
                }
                
                HStack {
                    Text(place.park)
                    Spacer()
                    Text(place.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(place.name)")
                    .font(.title2)
                Text(place.description)
            }
            .padding()
        }
        .navigationTitle(place.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PlaceInfo_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        PlaceInfo(place: modelData.places[0])
            .environmentObject(modelData)
    }
}
