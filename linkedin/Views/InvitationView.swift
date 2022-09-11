//
//  InvitationView.swift
//  linkedin
//
//  Created by Aman Negi on 11/09/22.
//

import SwiftUI

let dummyInvitation = NetworkModel(id: 1, name: "John Doe", position: "CEO at Yayy", mutual: 11, image: "01")

struct InvitationView: View {
    var invitation: NetworkModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(invitation.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text(invitation.name)
                    .font(.title3)
                    .foregroundColor(.black)
                Text(invitation.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(invitation.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            HStack {
                 Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                   .font(.system(size: 35))
                   .foregroundColor(.blue)
                   .opacity(0.8)
            }.padding(.horizontal)
        
        }.frame(width: .infinity, height: .infinity)
            .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(invitation: dummyInvitation)
    }
}
