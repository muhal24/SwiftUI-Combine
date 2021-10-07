//
//  BookReadingView.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//


import SwiftUI

struct BookReadingView: View {
    var titleBook: String

    var body: some View {
        VStack {
            Text(titleBook)
            .font(.largeTitle)

            Divider()
                .padding(.top, 1)
                .padding([.leading, .trailing], 20)
                .padding(.bottom, 20)

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent gravida elit vitae quam consequat ullamcorper. Vestibulum turpis est, congue ut posuere et, sollicitudin ac neque. Fusce nec tellus arcu. Nunc consequat lacus et dui vestibulum maximus. In lobortis nibh a facilisis aliquam. Proin eget ornare urna. Aliquam at malesuada massa, vitae accumsan eros. Vestibulum nec dui scelerisque enim rhoncus suscipit. Fusce a magna odio. Vestibulum egestas in tellus a porttitor. Nunc pellentesque, augue eu dignissim ullamcorper, magna eros semper nulla, at rutrum lorem est ut lectus. Nunc id libero lectus. Nunc egestas velit eu quam finibus, et convallis ipsum volutpat. Praesent sodales ultricies nunc, vel molestie quam ornare in. Pellentesque nec commodo est, in commodo nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.")
            .padding(30)
        }
    }
}

struct BookReadingView_Previews: PreviewProvider {
    static var previews: some View {
        BookReadingView(titleBook:"The two towers")
    }
}

