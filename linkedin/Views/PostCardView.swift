//
//  PostCardView.swift
//  linkedin
//
//  Created by Aman Negi on 11/09/22.
//

import SwiftUI

let dummyPost = PostModel(id: 1, image: "1", title: "John Doe", followers: 2037, profileImage: "02")

struct PostCardView: View {
    var post: PostModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
            
            HStack(alignment: .center) {
                Image(post.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.body)
                    Text("\(post.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .foregroundColor(.black)
            }.padding(.horizontal)
            
            Text("I am learning iOS development with Swift UI and its pretty much fun.")
                .padding(.horizontal)
            
            Image(post.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            
            Divider()
            
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "hand.thumbsup")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Text("Like")
                        .font(.body)
                }
                Spacer()
                VStack {
                    Image(systemName: "text.bubble")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Text("Comment")
                        .font(.body)
                }
                Spacer()
                VStack {
                    Image(systemName: "arrow.turn.up.right")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Text("Share")
                        .font(.body)
                }
                Spacer()
                VStack {
                    Image(systemName: "paperplane.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Text("Send")
                        .font(.body)
                }
                Spacer()
            }
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(post: dummyPost)
    }
}
