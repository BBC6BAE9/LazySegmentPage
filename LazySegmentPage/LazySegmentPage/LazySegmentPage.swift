//
//  FirstView.swift
//  SegDemo
//
//  Created by hong on 10/20/24.
//

import SwiftUI

struct LazySegmentPage<Content: View>: View {
    @ObservedObject var vm: SegmentPageViewModel<Content>
    
    init(vm: SegmentPageViewModel<Content>) {
        self.vm = vm
    }
    
    var body: some View {
        ZStack {
            if vm.showd {
                self.vm.content()
            } else {
                Color.white
            }
        }
    }
}
