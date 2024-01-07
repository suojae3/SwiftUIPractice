//
//  FeedCell.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/7/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            
            // Image + userName
            HStack(spacing: 16){
                Image("Sessac")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("Suojae")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            // post image
            Image("Map")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // action buttons
            HStack {
                Button {
                    print("Like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.righ  t")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share post")
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
                Text("Suojae: ").fontWeight(.semibold) +
                Text("동남아 여행 갈래요 동남아 여행 갈래요 동남아 여행 갈래요 동남아 여행 갈래요 동남아 여행 갈래요 동남아 여행 갈래요")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
        }
    }
}

#Preview {
    FeedCell()
}
