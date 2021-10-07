//
//  CartButtonView.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import SwiftUI

struct CartButtonView: View {
    var numberOfItems: Int

    var body: some View {
        VStack {
            Image("iconCart")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32, alignment: .center)
                .foregroundColor(.black)
                .overlay(ImageOverlay(numberOfItems: numberOfItems), alignment: .center)
            Spacer()
        }
    }

    struct ImageOverlay: View {
        var numberOfItems: Int

        var body: some View {
            ZStack {
                Text(String(numberOfItems))
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .padding(5)
            }
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(numberOfItems: 3)
    }
}

