//
//  CartViewModel.swift
//  SwiftUI-Combine
//
//  Created by Muhammed Hanifi Alma on 7.10.2021.
//

import Foundation

class CartViewModel: ViewModel {

    @Published
    var state: CartState
    private var service: BookService

    init(service: BookService) {
        let cart = service.cartItems()
        self.state = CartState(cart: cart)
        self.service = service
    }

    func trigger(_ input: CartInput) {
        switch input {
        case .checkout:
            service.checkout()
            state.cart = service.cartItems()
        }
    }
    
}

