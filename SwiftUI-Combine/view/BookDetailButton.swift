//
//  BookDetailButton.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import SwiftUI

struct BookDetailButton: View {

    var text: String
    var buttonColor: Color

    var body: some View {
        HStack {
            Text(text)
                .fontWeight(.semibold)
        }
        .frame(width: 200)
        .padding()
        .foregroundColor(.white)
        .background(buttonColor)
        .cornerRadius(40)
    }
}
