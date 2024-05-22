//
//  Feed.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 14.05.2024..
//

import SwiftUI

struct Feed: View {
    @StateObject var viewModel = FeedModel()
    var body: some View {
        ScrollView{
            LazyVStack (spacing : 0) {
                ForEach(viewModel.posts) {post in
                    FeedCell(post: post)
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
