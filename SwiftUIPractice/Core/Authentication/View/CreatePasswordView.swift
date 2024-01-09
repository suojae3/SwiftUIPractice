//
//  CreatePasswordView.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/8/24.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Create Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your passowrd must be at least 6 chracters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 25)
            
            SecureField("Password", text: $password)
                .autocorrectionDisabled()
                .modifier(TextFieldModifier())
                .padding(.top)

            NavigationLink {
                CompleteSignupView()
                    .navigationBarBackButtonHidden()
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
    CreatePasswordView()
}
