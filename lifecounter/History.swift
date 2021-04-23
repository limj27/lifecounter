//
//  History.swift
//  lifecounter
//
//  Created by Justin Lim on 4/22/21.
//

import SwiftUI

struct History: View {
    var choice: [String]
    var body: some View {
        GeometryReader { metrics in
            ScrollView {
                ForEach(choice, id: \.self) { x in
                    Text(x).frame(width: metrics.size.width)
                    Spacer()
                }
            }
        }
        
    }
}
