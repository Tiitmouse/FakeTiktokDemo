//
//  UserCell.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 15.05.2024..
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing:12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading) {
                Text("user_01")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("test user 01")
                    .font(.footnote)
                
            }
            
            Spacer()
        }
       // .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
