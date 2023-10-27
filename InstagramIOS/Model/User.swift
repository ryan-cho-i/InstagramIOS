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
        .init(id: NSUUID().uuidString, email: "batman@gmail.com", username: "batman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "venom@gmail.com", username: "venom", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "batman@gmail.com", username: "ironman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "blackpanther@gmail.com", username: "blackpanther", profileImageUrl: nil, fullname: nil, bio: "Gotham's Dark Knight"),
        .init(id: NSUUID().uuidString, email: "spiderman@gmail.com", username: "spiderman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham's Dark Knight")
    ]
}
