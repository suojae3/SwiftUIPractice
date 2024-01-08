//
//  SearchView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/7/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(User.MOCK_USERS) {user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.userName)
                                        .fontWeight(.semibold)
                                    if let fullName = user.fullname {
                                        Text(fullName)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)

                        }
                    }
                }
                .navigationDestination(for: User.self, destination: { user in
                    ProfileView()
                })
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            
            .navigationTitle("Explore ")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
