//
//  FeedModel.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 15.05.2024..
//

import Foundation

class FeedModel : ObservableObject {
    @Published var posts = [Post]()
    
    let videoUrls = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
    ]
    

    init(){
        fetchPosts()
    }
    
    func fetchPosts(){
        self.posts = [
           .init(id: NSUUID().uuidString, videoUrl: videoUrls[0]),
           .init(id: NSUUID().uuidString, videoUrl: videoUrls[1]),
           .init(id: NSUUID().uuidString, videoUrl: videoUrls[2]),
           .init(id: NSUUID().uuidString, videoUrl: videoUrls[3]),
        ]
   }
    
}
