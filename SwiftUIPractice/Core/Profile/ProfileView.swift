//
//  ProfileView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/6/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User

    var posts: [Post] {
        return Post.MOCK_POSTS.filter ({ $0.user?.userName == user.userName })
    }
    
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        ScrollView {
            VStack {

                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
