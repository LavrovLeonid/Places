//
//  PlaceInfo.swift
//  Places
//
//  Created by Leonid Lavrov on 06.02.2021.
//

import SwiftUI

struct PlaceInfo: View {
    var place: Place
    
    var body: some View {
        VStack {
            MapView(coordinate: place.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: place.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(place.name)
                    .font(.title)
                    .foregroundColor(.primary)
                
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
    static var previews: some View {
        PlaceInfo(place: places[0])
    }
}
