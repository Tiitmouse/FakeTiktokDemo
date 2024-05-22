//
//  FeedCell.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 14.05.2024..
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post : Post
    
    var body: some View {
        ZStack{
            VideoPlayer(player : AVPlayer(url : URL(string: post.videoUrl)!))
                .containerRelativeFrame([.horizontal, .vertical])
                }
            VStack {
                Spacer()
                
                HStack (alignment : .bottom) {
                    VStack(alignment: .leading){
                        Text("user.name")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("post description text??")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack (spacing : 28) {
                        Circle()
                            .frame(width: 38, height: 38)
                            .foregroundStyle(.gray)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName : "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                                
                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName : "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                                
                                Text("12")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                                
                        }
                        Button {
                            
                        } label: {
                            Image(systemName : "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 28)
                                .foregroundStyle(.white)

                        }
                        Button {
                            
                        } label: {
                            Image(systemName : "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)

                        }
                    }
                }
                .padding(.bottom, 85)
            }
            .padding()
        }
    }


#Preview {
    FeedCell(post : Post(id: NSUUID().uuidString, videoUrl: ""))
}
