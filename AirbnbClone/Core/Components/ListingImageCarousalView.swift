//
//  ListingImageCarousalView.swift
//  AirbnbClone
//
//  Created by Pranav R on 31/03/24.
//

import SwiftUI

struct ListingImageCarousalView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    var body: some View {
        // images
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousalView()
}
