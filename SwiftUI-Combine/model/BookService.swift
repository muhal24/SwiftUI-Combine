//
//  BookService.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import Foundation

protocol BookService {
    // Book list
    func bookList() -> [Book]

    // Book detail
    func bookDetails(bookId: Int) -> BookDetail
    func numberOfCartItems() -> Int
    func addToCart(bookId: Int)

    // Cart
    func cartItems() -> Cart
    func checkout()
}

