//
//  ViperApp.swift
//  Viper
//
//  Created by Fauad Anwar on 28/09/22.
//

import SwiftUI

@main
struct ViperApp: App {
    var body: some Scene {
        WindowGroup {
            let itemRouter = ItemsRouter.setup()
            itemRouter.entryPoint
        }
    }
}
