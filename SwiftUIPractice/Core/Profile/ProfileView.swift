//
//  ProfileView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/6/24.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // header
                    VStack(spacing: 10) {
                        // pic and stats
                        HStack {
                            Image("Sessac")
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
                            Text("Suojae")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("SwiftUI 꿀잼이였네")
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
}

#Preview {
    ProfileView()
}
