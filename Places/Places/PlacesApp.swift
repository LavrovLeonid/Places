//
//  PlacesApp.swift
//  Places
//
//  Created by Leonid Lavrov on 31.01.2021.
//

import SwiftUI

@main
struct PlacesApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
