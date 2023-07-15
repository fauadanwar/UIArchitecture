//
//  ItemsPresentor.swift
//  Viper
//
//  Created by Fauad Anwar on 28/09/22.
//

import SwiftUI
// Object type
// Protocol
// Refernce to Interactor, Router, View

class ItemsPresentor: ObservableObject {
    private var itemsRouter: ItemsRouterProtocol?
    private var itemsInteractor: ItemsInteractorProtocol?
        
    @Published var items: [Items] = []
    @Published var message: String = "Loading"

    func getItems() {
        itemsInteractor?.getItems(completionHandler: { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let users):
                    self?.items = users
                case .failure:
                    self?.message = "Unable to fetch Items"
                }
            }
        })
    }
}
