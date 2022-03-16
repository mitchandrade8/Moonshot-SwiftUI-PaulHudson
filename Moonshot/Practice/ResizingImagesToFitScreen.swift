//
//  ResizingImagesToFitScreen.swift
//  Moonshot
//
//  Created by Mitch Andrade on 3/15/22.
//

import SwiftUI

struct ResizingImagesToFitScreen: View {
    var body: some View {
        GeometryReader { geo in
            Image("Example")
                .resizable()
                .scaledToFit()
                .cornerRadius(26)
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct ResizingImagesToFitScreen_Previews: PreviewProvider {
    static var previews: some View {
        ResizingImagesToFitScreen()
    }
}
