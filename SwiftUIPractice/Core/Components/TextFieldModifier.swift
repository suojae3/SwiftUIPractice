//
//  TextFieldModifier.swift
//  SwiftUIPractice
//
//  Created by ㅣ on 1/7/24.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
    content
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray5))
        .cornerRadius(10)
        .padding(.horizontal, 24)


    }
}


