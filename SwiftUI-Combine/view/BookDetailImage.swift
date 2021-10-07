//
//  BookDetailImage.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import SwiftUI

import SwiftUI

struct BookDetailImage: View {
    let image: Image

    var body: some View {
        image
        .resizable()
        .frame(width: 180, height: 280)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
}

