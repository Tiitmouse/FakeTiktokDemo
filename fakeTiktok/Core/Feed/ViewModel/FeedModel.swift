//
//  FeedModel.swift
//  fakeTiktok
//
//  Created by Lorena Kovačić on 15.05.2024..
//

import Foundation

class FeedModel : ObservableObject {
    @Published var posts = [Post]()
    
    let path1 = Bundle.main.path(forResource: "vid01", ofType:"mp4")
    let path2 = Bundle.main.path(forResource: "vid02", ofType:"mp4")
    
    

    init(){
        
    }
    
    func fetchPosts(){
        self.posts = [
           .init(id: NSUUID().uuidString, path: "../../../vid01.mp4")
        ]
   }
    
}
