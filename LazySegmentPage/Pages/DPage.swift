//
//  DPage.swift
//  LazySegmentPage
//
//  Created by hong on 10/23/24.
//

import SwiftUI

struct DPage: View {
    
    init() {
        print("init DPage")
    }
    
    var body: some View {
        let _ = Self._printChanges()
        ZStack {
            Color.cyan
            Text("DPage")
        }
    }
}

#Preview {
    DPage()
}
