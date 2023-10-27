//
//  UploadPostViewModel.swift
//  InstagramIOS
//
//  Created by soo on 10/26/23.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromItme: selectedImage)}}
    }
    
    @Published var postImage: Image?
    
    func loadImage (fromItme item: PhotosPickerItem?) async {
        guard let item = item else {return}
        
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else {return}
        self.postImage = Image(uiImage: uiImage)
    }
}
