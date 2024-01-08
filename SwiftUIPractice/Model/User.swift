//
//  User.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/8/24.
//

import Foundation

struct User: Identifiable, Hashable,  Codable {
    let id: String
    var userName: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, userName: "Suojae", profileImageUrl: "Sessac", fullname: "Suojae11", bio: "Hi I'm an iOS developer who loves to read", email: "suojae@naver.com"),
        .init(id: NSUUID().uuidString, userName: "Suojae2", profileImageUrl: "Sessac", fullname: "Suojae22", bio: "Hi I'm an iOS developer who loves to read", email: "suojae2@naver.com"),
        .init(id: NSUUID().uuidString, userName: "Suojae3", profileImageUrl: "Sessac", fullname: nil, bio: "Hi I'm an iOS developer who loves to read", email: "suojae3@naver.com"),
        .init(id: NSUUID().uuidString, userName: "Suojae4", profileImageUrl: "Sessac", fullname: "Suojae44", bio: "Hi I'm an iOS developer who loves to read", email: "suojae4@naver.com"),
        .init(id: NSUUID().uuidString, userName: "Suojae5", profileImageUrl: "Sessac", fullname: "Suojae55", bio: "Hi I'm an iOS developer who loves to read", email: "suojae5@naver.com"),
        .init(id: NSUUID().uuidString, userName: "Suojae6", profileImageUrl: "Sessac", fullname: "Suojae66", bio: "Hi I'm an iOS developer who loves to read", email: "suojae6@naver.com"),
        .init(id: NSUUID().uuidString, userName: "Suojae7", profileImageUrl: "Sessac", fullname: "Suojae77", bio: "Hi I'm an iOS developer who loves to read", email: "suojae7@naver.com"),
    ]
}
