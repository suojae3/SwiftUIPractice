//
//  FeedView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/7/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { post in
                        FeedCell()
                    }
                }
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("TastyCodeLogo")
                        .resizable()
                        .frame(width: 100, height: 30)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
