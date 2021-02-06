//
//  ContentView.swift
//  Places
//
//  Created by Leonid Lavrov on 31.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlacesList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
