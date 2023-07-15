//
//  ViperDemoApp.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//

import SwiftUI

@main
struct ViperDemoApp: App {
    var body: some Scene {
        WindowGroup {
            let router = FZListRouter()
            router.getFZEmployeeListView()
        }
    }
}
