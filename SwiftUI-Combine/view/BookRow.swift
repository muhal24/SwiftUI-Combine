//
//  BookRow.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import SwiftUI

struct BookRow: View {
    let book: Book

    var body: some View {
        HStack {
            BookImage(image: book.image)
            
            VStack(alignment: .leading) {
                Text(book.title).font(.headline)
                Text("by " + book.author).font(.subheadline).foregroundColor(.gray)
                Spacer().frame(height: 15)
                Text("₺" + String(book.price)).font(.title)
            }
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: Book(id: 7, title: "Creativity, Inc.", author: "Ed Catmull", price: 17.85, imageName: "creativity"))
    }
}

