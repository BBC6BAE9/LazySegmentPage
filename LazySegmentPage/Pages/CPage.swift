//
//  CPage.swift
//  LazySegmentPage
//
//  Created by hong on 10/23/24.
//

import SwiftUI

struct CPage: View {
    init() {
        print("init CPage")
    }
    
    var body: some View {
        let _ = Self._printChanges()
        ZStack {
            Color.red
            Text("CPage")
        }
    }
}

#Preview {
    CPage()
}
