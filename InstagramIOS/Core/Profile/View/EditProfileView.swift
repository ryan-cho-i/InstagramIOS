//
//  EditProfileView.swift
//  InstagramIOS
//
//  Created by soo on 10/27/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: PhotosPickerItem?
    @State private var fullname = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            // toolbar
            VStack {
                HStack {
                    Button ("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        print("Update Profile Info")
                    } label: {
                        Text ("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                
                Divider()
            }
            
            // edit profile pic
            
            PhotosPicker(selection: $selectedImage) {
                VStack {
                    Image("person")
                        .resizable()
                        .foregroundColor(.white)
                        .background(.gray)
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
                    
                    Text("Edit Profile Picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Divider()
                    
                    
                }

            }
            .padding(.vertical, 8)
            
            
            
            
            // edit profile info
            
            VStack {
                EditProfileRowView(title: "Name", placeholder: "Enter your name ...", text: $fullname)
                
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio ...", text: $bio)
            }
            
            Spacer()
        }
    }
}

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            
            VStack {
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}


#Preview {
    EditProfileView()
}
