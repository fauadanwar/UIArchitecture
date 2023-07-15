//
//  FZLisInteractor.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//

import Foundation
protocol FZLisInteractorProtocol {
    func getEmployees() -> [FZEmployee]
}

//Create diffrenc classes for diffrent use cases, like fetching data from Database or API call
class FZLisInteractor: FZLisInteractorProtocol {
    func getEmployees() -> [FZEmployee]
    {
        return FZEmployee.previewList()
    }
}
