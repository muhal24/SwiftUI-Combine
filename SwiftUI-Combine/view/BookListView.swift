//
//  BookListView.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import SwiftUI

struct BookListState {
    var service: BookService
    var books: [Book]
}

struct BookListView: View {

    @ObservedObject var viewModel: AnyViewModel<BookListState, Never>

    var body: some View {
        NavigationView {
            ScrollView {
            VStack(alignment: .leading){
            ForEach(viewModel.state.books) { book in
                NavigationLink(destination: NavigationLazyView(BookDetailView(service: self.viewModel.state.service, bookId: book.id))) {
                    BookRow(book: book)
                }
            }
         
            }
            }
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = AnyViewModel(BookListViewModel(service: MockBookService()))
        return BookListView(viewModel: viewModel)
    }
}

