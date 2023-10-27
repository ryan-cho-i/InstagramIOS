//
//  User.swift
//  InstagramIOS
//
//  Created by soo on 10/26/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {

    let id: String
    let email: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, email: "batman@gmail.com", username: "batman", profileImageUrl: "batman-2", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "venom@gmail.com", username: "venom", profileImageUrl: "venom-2", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "batman@gmail.com", username: "ironman", profileImageUrl: "iron-man-1", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "blackpanther@gmail.com", username: "blackpanther", profileImageUrl: "black-panther-2", fullname: nil, bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "spiderman@gmail.com", username: "spiderman", profileImageUrl: "spiderman", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight")
    ]
}
