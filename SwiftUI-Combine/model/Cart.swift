//
//  Cart.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import Foundation

struct Item: Identifiable {
    var id: String
    var item: Book
    var units: Int
}

struct Cart {
    var items: [Item]
    var numberOfItems: Int
    var total: Double
}

