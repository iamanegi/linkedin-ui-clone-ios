//
//  HomeHeaderView.swift
//  linkedin
//
//  Created by Aman Negi on 11/09/22.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SearchBarView()
            Divider()
            
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Photo")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Photo")
            }.padding(.horizontal)
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
