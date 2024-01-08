//
//  AddEmailView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/7/24.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
    
        VStack {
            Text("Add your Email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account!")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 25)
            
            TextField("Email", text: $email)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .padding(.horizontal, 25)
            
            
            NavigationLink {
                CreateUserNameView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.white))
                    .frame(width: 360, height: 45)
                    .background(Color(.blue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
    }
}

#Preview {
    AddEmailView()
}
