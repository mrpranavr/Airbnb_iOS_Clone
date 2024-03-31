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
                LazyVStack(spacing: 10) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
            }
            )
            .navigationDestination(for: Int.self, destination: {
                listing in
                Text("Detail View...")
            })
        }
    }
}

#Preview {
    ExploreView()
}
