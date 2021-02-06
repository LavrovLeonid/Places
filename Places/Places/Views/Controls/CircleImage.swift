//
//  CircleImage.swift
//  Places
//
//  Created by Leonid Lavrov on 31.01.2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.primary, lineWidth: 4))
            .shadow(radius: 6)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
