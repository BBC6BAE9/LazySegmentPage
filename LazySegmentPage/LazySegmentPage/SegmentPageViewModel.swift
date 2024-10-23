//
//  SegmentPageViewModel.swift
//  SegDemo
//
//  Created by hong on 10/20/24.
//

import SwiftUI

class SegmentPageViewModel<Content: View>:Identifiable, ObservableObject {
   
    var id: String
    
    let content: () -> Content  // 闭包，用于生成 Content 视图

    init(id: String, content: @escaping () -> Content) {
        self.id = id
        self.content = content
    }
    
    func makeView() -> any View {
        return LazySegmentPage(vm: self)
    }
    
    func title() -> String {
        return self.id
    }
    
    @Published var showd: Bool = false
        
    func didTapSegment() {
        if (showd == false) {
            showd = true
        }
    }
}
