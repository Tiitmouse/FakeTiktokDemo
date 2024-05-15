//
//  ProfileHeader.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 15.05.2024..
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack (spacing: 16){
            VStack (spacing: 8) {
                Image(systemName : "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                
                Text("@user_name")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing:16){
                UserStat(value: 5, title: "Following")
                UserStat(value: 1, title: "Followers")
                UserStat(value: 7, title: "Likes")
            }
            
            Button{
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Divider()
            
        }
    }
}

#Preview {
    ProfileHeader()
}


