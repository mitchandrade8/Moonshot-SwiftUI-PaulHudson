//
//  HowToLayOutViewsInAScrollingGrid.swift
//  Moonshot
//
//  Created by Mitch Andrade on 3/15/22.
//

import SwiftUI

struct HowToLayOutViewsInAScrollingGrid: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
    ]
    
    var body: some View {
        ScrollView {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct HowToLayOutViewsInAScrollingGrid_Previews: PreviewProvider {
    static var previews: some View {
        HowToLayOutViewsInAScrollingGrid()
    }
}
