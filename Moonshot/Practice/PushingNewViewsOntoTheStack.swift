//
//  PushingNewViewsOntoTheStack.swift
//  Moonshot
//
//  Created by Mitch Andrade on 3/15/22.
//

import SwiftUI

struct PushingNewViewsOntoTheStack: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct PushingNewViewsOntoTheStack_Previews: PreviewProvider {
    static var previews: some View {
        PushingNewViewsOntoTheStack()
    }
}
