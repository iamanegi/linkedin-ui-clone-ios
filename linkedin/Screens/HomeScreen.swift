//
//  HomeScreen.swift
//  linkedin
//
//  Created by Aman Negi on 11/09/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            HomeHeaderView()
            PostListView()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
