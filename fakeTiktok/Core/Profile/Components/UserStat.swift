//
//  UserStat.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 15.05.2024..
//

import SwiftUI

struct UserStat: View {
        let value: Int
        let title: String
        
        var body: some View {
            VStack{
                Text("\(value)")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text(title)
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStat(value: 5, title: "Followers")
}
