//
        //
    //  Project: LazyVGrid_SwiftUI
    //  File: ContentView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

struct ContentView: View {

    // Define the grid's column layout.
    // GridItem(.flexible()) lets each column grow/shrink to fill available space equally.
    // `alignment` controls where each cell's content sits inside its column.
    let columns = [
        GridItem(.flexible(), alignment: .leading),   // left column — content hugs the left edge
        GridItem(.flexible(), alignment: .trailing),  // right column — content hugs the right edge
    ]

    // The data that drives our sections. Each string becomes one section header + 20 items.
    let months = ["January", "Feburary", "March"]

    var body: some View {

        // ScrollView makes its children scrollable.
        // By default it scrolls vertically.
        ScrollView {

            // LazyVGrid arranges views in a vertical grid.
            // "Lazy" means SwiftUI only creates cells as they scroll into view — great for performance.
            // `spacing` is the vertical gap between rows.
            // `pinnedViews: [.sectionHeaders]` keeps section headers visible while the user scrolls past their section.
            LazyVGrid(columns: columns, spacing: 12, pinnedViews: [.sectionHeaders]) {

                // Loop over each month to create one Section per month.
                // `id: \.self` uses the string value itself as a unique identifier.
                ForEach(months, id: \.self) { month in

                    // Section groups items and can have a header and/or footer.
                    Section {

                        // Generate 20 placeholder tiles for each month.
                        ForEach(0..<20) { i in
                            Color.blue
                                .frame(height: 200)  // give each tile a fixed height
                                // .overlay places a view on top of another without affecting layout
                                .overlay(Text("\(i)").foregroundStyle(.white))
                        }

                    } header: {
                        // This Text view is the sticky section header.
                        Text(month)
                            .font(.title.bold())
                            // Stretch the header across the full width and pin text to the left.
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 8)
                            // `.background(.background)` fills the header with the system background color
                            // so it visually "covers" the cells scrolling underneath it.
                            .background(.background)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
