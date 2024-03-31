//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Pranav R on 31/03/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            SearchAndFilterBar()
            ScrollView(content: {
                LazyVStack(spacing: 25) {
                    ForEach(0...10, id: \.self) { listing in
                        ListingItemView()
                    }
                }
            })
        }
    }
}

#Preview {
    ExploreView()
}
