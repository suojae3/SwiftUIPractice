//
//  ProfileView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/6/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User

    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                // header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack {
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 10, title: "Posts")
                            UserStatView(value: 80, title: "Followers")
                            UserStatView(value: 76, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text(user.userName)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text(user.bio ?? "")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action Button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                    }
                    Divider()
                }
                
                // post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...15, id: \.self) { inedx in
                        Image("Book")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
