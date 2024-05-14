//
//  Feed.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 14.05.2024..
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView{
            LazyVStack (spacing : 0) {
                ForEach(0 ..< 10) {post in
                    Rectangle()
                        .fill(.blue)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay{
                            Text("Post \(post)")
                                .foregroundStyle(.white)
                        }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    Feed()
}
