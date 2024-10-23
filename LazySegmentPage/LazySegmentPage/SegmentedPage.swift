//
//  SegmentedPage.swift
//  SegDemo
//
//  Created by hong on 10/20/24.
//

import SwiftUI

struct SegmentedPage<Content: View, T: Identifiable>: View {
    
    var vms: [SegmentPageViewModel<AnyView>]
    var content: (T) -> Content
    var list: [T]
    @State var select:String
    
    init(list: [T], @ViewBuilder content: @escaping (T) -> Content) {
        self.list = list
        self.content = content
        var arr:[SegmentPageViewModel<AnyView>] = []
        for item in list {
            arr.append(SegmentPageViewModel(id: item.id as! String, content: {
                AnyView(content(item))
            }))
        }
        self.vms = arr
        
        _select = State(initialValue: vms.first!.id)
        vms.first?.didTapSegment()
    }
    
    var body: some View {
        VStack{
            ScrollView(.horizontal) {
                HStack {
                    ForEach(vms, id: \.id) { vm in
                        Text(vm.title())
                            .font(.system(size: 12))
                            .padding(8)
                            .foregroundStyle(vm.id == select ? .white : Color.gray)
                            .background(vm.id == select ? .blue : .black.opacity(0.06))
                            .mask(RoundedRectangle(cornerRadius: 4))
                            .onTapGesture {
                                select = vm.id
                            }
                    }
                }
                .padding(.horizontal, 24)
            }
            TabView(selection: $select) {
                ForEach(vms, id: \.id) { vm in
                    AnyView(vm.makeView().id(vm.id))
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: select) { newValue in
                if let targetVM = vms.filter({ newValue == $0.id }).first {
                    targetVM.didTapSegment()
                }
            }
        }
    }
}
