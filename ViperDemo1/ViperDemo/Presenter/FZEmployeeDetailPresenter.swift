//
//  FZEmployeeDetailPresenter.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//

import Foundation
class FZEmployeeDetailPresenter
{
    private let employee: FZEmployee
    let name: String
    let department: String
    
    init(employee: FZEmployee) {
        self.employee = employee
        self.name = employee.name
        self.department = employee.department
    }
}
