//
//  ItemsRouter.swift
//  Viper
//
//  Created by Fauad Anwar on 28/09/22.
//

import SwiftUI
// Object type
// Entry Point

protocol ItemsRouterProtocol
{
    var entryPoint: ItemsView? { get }
    static func setup() -> ItemsRouterProtocol
}

class ItemsRouter: ItemsRouterProtocol
{
    var entryPoint: ItemsView?
    
    static func setup() -> ItemsRouterProtocol
    {
        let router = ItemsRouter()
        let itemsPresentor: ItemsPresentor = ItemsPresentor()
        let itemsInteractor: ItemsInteractorProtocol = ItemsInteractor()
        itemsPresentor.itemsInteractor = itemsInteractor
        itemsPresentor.itemsRouter = router
        let itemsView: ItemsView = ItemsView(itemsPresentor: itemsPresentor)
        router.entryPoint = itemsView
        return router
    }
}
