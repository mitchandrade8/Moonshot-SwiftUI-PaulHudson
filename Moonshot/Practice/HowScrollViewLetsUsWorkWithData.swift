//
//  HowScrollViewLetsUsWorkWithData.swift
//  Moonshot
//
//  Created by Mitch Andrade on 3/15/22.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct HowScrollViewLetsUsWorkWithData: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct HowScrollViewLetsUsWorkWithData_Previews: PreviewProvider {
    static var previews: some View {
        HowScrollViewLetsUsWorkWithData()
    }
}
