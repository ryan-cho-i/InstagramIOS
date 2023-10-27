//
//  UserService.swift
//  InstagramIOS
//
//  Created by soo on 10/27/23.
//

import Foundation
import Firebase

struct UserService {
    
    @MainActor
    static func fetchAllUsers () async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({try? $0.data(as: User.self)})
    }
}
