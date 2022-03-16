//
//  WorkingWithHierarchicalCodableData.swift
//  Moonshot
//
//  Created by Mitch Andrade on 3/15/22.
//

import SwiftUI

struct PracticeUser: Codable {
    let name: String
    let address: PracticeAddress
}

struct PracticeAddress: Codable {
    let street: String
    let city: String
}

struct WorkingWithHierarchicalCodableData: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """
            
            let data = Data(input.utf8)
            
            if let user = try? JSONDecoder().decode(PracticeUser.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct WorkingWithHierarchicalCodableData_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithHierarchicalCodableData()
    }
}
