//
//  BookListViewModel.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import Foundation

class BookListViewModel: ViewModel {

    @Published
    var state: BookListState

    init(service: BookService) {
        let books = MockBookService().bookList()
        self.state = BookListState(service: service, books: books)
    }

    func trigger(_ input: Never) { }
}
