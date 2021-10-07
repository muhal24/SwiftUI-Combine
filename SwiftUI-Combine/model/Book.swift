//
//  Book.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import Foundation
import SwiftUI

struct Book: Identifiable {
    var id: Int
    var title: String
    var author: String
    var price: Double
    var imageName: String
}

extension Book {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

