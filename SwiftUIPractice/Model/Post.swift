//
//  Post.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/9/24.
//

import SwiftUI

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        
        .init(  
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test caption",
            likes: 123,
            imageUrl: "Map",
            timeStamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test caption",
            likes: 150,
            imageUrl: "Book",
            timeStamp: Date(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test caption",
            likes: 153,
            imageUrl: "Map",
            timeStamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is test caption",
            likes: 133,
            imageUrl: "Map",
            timeStamp: Date(),
            user: User.MOCK_USERS[1]
        ),

        
    ]
}
