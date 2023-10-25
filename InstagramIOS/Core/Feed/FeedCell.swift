//
//  FeedCell.swift
//  InstagramIOS
//
//  Created by soo on 10/25/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        
        VStack {
            // image + username
            HStack {
                Image("batman-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            // post image
            Image ("batman-2")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // action buttons
            HStack (spacing: 16) {
                
                Button {
                    print("Like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on Post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            // likes label
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // caption label
            HStack {
                Text("batman ").fontWeight(.semibold) +
                Text("This is some test caption for now")
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
