//
//  BookDetail.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import Foundation
import SwiftUI

struct BookDetail {
    var id: String
    var bookId: Int
    var author: String
    var title: String
    var price: Double
    var genre: [Genre]
    var kind: String
    var description: String
    var imageName: String
    var isAvailable: Bool
}

extension BookDetail {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

