//
//  SearchBarView.swift
//  linkedin
//
//  Created by Aman Negi on 11/09/22.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center) {
            // profile
            Image("demo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            // search bar
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.blue.opacity(0.2))
                .frame(width: .infinity, height: 30)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                )
            // messaging
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }.padding(.top)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
