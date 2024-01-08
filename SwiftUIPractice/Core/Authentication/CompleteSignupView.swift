//
//  CompleteSignupView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/8/24.
//

import SwiftUI

struct CompleteSignupView: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 12) {
            
            Spacer()
            
            Text("Welcome to TastyCode")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Click below to complete registration and start using Instagrams")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 25)
            

            
            Button {
                print("complete Sign up")
                
                
            } label: {
                Text("Compete Sign Up")
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
    CompleteSignupView()
}
