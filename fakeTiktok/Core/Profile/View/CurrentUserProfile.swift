//
//  CurrentUserProfile.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 15.05.2024..
//

import SwiftUI

struct CurrentUserProfile: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack (spacing: 2){
                    //header
                    ProfileHeader()
                    //posts
                    PostGrid()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfile()
}
