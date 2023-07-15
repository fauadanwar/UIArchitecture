//
//  FZListRouter.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//

import Foundation
protocol FZListRouterProtocol {
    func getFZEmployeeListView() -> FZEmployeeListView
    func getFZEmployeeDetailView(employeeDetailPresenter: FZEmployeeDetailPresenter) -> FZEmployeeDetailView
}

class FZListRouter: FZListRouterProtocol {
    func getFZEmployeeDetailView(employeeDetailPresenter: FZEmployeeDetailPresenter) -> FZEmployeeDetailView {
        FZEmployeeDetailView(employeeDetailPresenter: employeeDetailPresenter)
    }
    
    func getFZEmployeeListView() -> FZEmployeeListView {
        let lisInteractor = FZLisInteractor()
        let listPresenter = FZListPresenter(listRouter: self, lisInteractor: lisInteractor)
        let employeeListView = FZEmployeeListView(listPresenter: listPresenter)
        return employeeListView
    }
}
