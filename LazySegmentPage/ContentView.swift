//
//  ContentView.swift
//  LazySegmentPage
//
//  Created by hong on 10/23/24.
//

import SwiftUI

struct Segment:Identifiable {
    var id:String
    
    static func previewData() -> [Segment] {
        return [
            .init(id: "a"),
            .init(id: "b"),
            .init(id: "c"),
            .init(id: "d")
        ]
    }
}

struct ContentView: View {
    var body: some View {
        SegmentedPage(list: Segment.previewData()) { segment in
            switch segment.id {
            case "a":
                APage()
            case "b":
                BPage()
            case "c":
                CPage()
            case "d":
                DPage()
            default:
                Text(segment.id)
            }
        }
    }
}

#Preview {
    ContentView()
}
