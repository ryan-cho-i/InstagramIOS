//
//  User.swift
//  InstagramIOS
//
//  Created by soo on 10/26/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let email: String
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(email: "batman@gmail.com", id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman-2", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(email: "venom@gmail.com", id: NSUUID().uuidString, username: "venom", profileImageUrl: "venom-2", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(email: "batman@gmail.com", id: NSUUID().uuidString, username: "ironman", profileImageUrl: "iron-man-1", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(email: "blackpanther@gmail.com", id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "black-panther-2", fullname: nil, bio: "Gotham's Dark Knight"),
        .init(email: "spiderman@gmail.com", id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight")
    ]
}
