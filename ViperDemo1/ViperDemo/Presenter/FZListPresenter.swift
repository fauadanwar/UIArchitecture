//
//  FZListPresenter.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//

import Foundation
class FZListPresenter: ObservableObject {
    @Published var detailPresenters: [FZEmployeeDetailPresenter] = [FZEmployeeDetailPresenter]()
    private let listRouter: FZListRouterProtocol
    private let lisInteractor: any FZLisInteractorProtocol

    init(listRouter: FZListRouterProtocol, lisInteractor: any FZLisInteractorProtocol) {
        self.listRouter = listRouter
        self.lisInteractor = lisInteractor
    }
    
    func getEmployees() {
        let employeeList = lisInteractor.getEmployees()
        detailPresenters = employeeList.map{ FZEmployeeDetailPresenter(employee: $0) }
    }
    
    func getFZEmployeeDetailView(employeeDetailPresenter: FZEmployeeDetailPresenter) -> FZEmployeeDetailView {
        listRouter.getFZEmployeeDetailView(employeeDetailPresenter: employeeDetailPresenter)
    }
}
