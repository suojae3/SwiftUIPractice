//
//  UploadPostView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/9/24.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem?
    
    var body: some View {
        VStack {
            // Action tool Bar
            HStack {
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }

            }
            .padding(.horizontal)
            
            // Post image and caption
            HStack {
                Image("Map")
                    .resizable()
                    .frame(width: 100, height: 100)
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            
            Spacer()
        }
        .onAppear {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $photoItem)
        
    }
}

#Preview {
    UploadPostView()
}
