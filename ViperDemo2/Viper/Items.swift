//
//  Items.swift
//  Viper
//
//  Created by Fauad Anwar on 28/09/22.
//

import Foundation
// Model
struct Items: Codable, Identifiable {
    let id: UUID
    let productName: String
    let productSize: String
    let productOrderStatus: String
}
