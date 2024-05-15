//
//  Search.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 15.05.2024..
//

import SwiftUI

struct Search: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16){
                    ForEach(0 ..< 20) {user in
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    Search()
}
