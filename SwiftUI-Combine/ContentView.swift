//
//  ContentView.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import SwiftUI

struct ContentView: View {
    let viewModel = AnyViewModel(BookListViewModel(service: MockBookService()))
    var body: some View {
    
    BookListView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
