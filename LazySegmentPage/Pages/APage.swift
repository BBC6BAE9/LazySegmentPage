//
//  APage.swift
//  LazySegmentPage
//
//  Created by hong on 10/23/24.
//

import SwiftUI

struct APage: View {
    init() {
        print("init Apage")
    }
    
    var body: some View {
        let _ = Self._printChanges()
        ZStack {
            Color.blue
            Text("APage")
        }
    }
}

#Preview {
    APage()
}
