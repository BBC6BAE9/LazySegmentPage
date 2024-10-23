//
//  BPage.swift
//  LazySegmentPage
//
//  Created by hong on 10/23/24.
//

import SwiftUI

struct BPage: View {
    init() {
        print("init BPage")
    }
    
    var body: some View {
        let _ = Self._printChanges()
        ZStack {
            Color.yellow
            Text("BPage")
        }
    }
}

#Preview {
    BPage()
}
