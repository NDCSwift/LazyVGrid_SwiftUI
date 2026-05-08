//
        //
    //  Project: LazyVGrid_SwiftUI
    //  File: PhotoGridView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

struct PhotoGridView: View {

    // GridItem(.adaptive(minimum: 100)) tells SwiftUI to fit as many columns as possible,
    // but each column must be at least 100 points wide.
    // This automatically adjusts the column count on different screen sizes — no hardcoding needed.
    let columns = [GridItem(.adaptive(minimum: 100), spacing: 2)]

    // 80 placeholder "photos" represented as integers.
    // In a real app this would be an array of images or assets.
    let photos = Array(0..<80)

    var body: some View {
        NavigationStack {

            // ScrollView(.vertical) allows the grid to scroll up and down.
            ScrollView(.vertical) {

                // LazyVGrid renders only the cells currently visible on screen,
                // keeping memory usage low even with large data sets.
                LazyVGrid(columns: columns, spacing: 2) {

                    ForEach(photos, id: \.self) { i in

                        // Use HSB (Hue-Saturation-Brightness) color to give every cell a unique color.
                        // Dividing the index by the total count (80) spreads hues evenly around the color wheel (0.0 – 1.0).
                        Color(
                            hue: Double(i) / 80,  // position on the color wheel
                            saturation: 0.6,       // how vivid the color is (0 = grey, 1 = full color)
                            brightness: 0.9        // how bright the color is (0 = black, 1 = full brightness)
                        )
                        // .aspectRatio(1, ...) forces a 1:1 width-to-height ratio, making every cell square.
                        // .fill means the view expands to fill its cell completely.
                        .aspectRatio(1, contentMode: .fill)
                    }
                }
                .padding(2) // adds a small outer border that matches the inter-cell spacing
            }
            .navigationTitle("Photos")
        }
    }
}

#Preview {
    PhotoGridView()
}
