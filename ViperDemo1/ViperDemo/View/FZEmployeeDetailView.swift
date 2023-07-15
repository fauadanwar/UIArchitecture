//
//  FZEmployeeDetailView.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//

import SwiftUI

struct FZEmployeeDetailView: View {
    let employeeDetailPresenter: FZEmployeeDetailPresenter

    var body: some View {
        VStack{
            HStack
            {
                Text("Name :")
                Text(employeeDetailPresenter.name)
            }
            HStack
            {
                Text("Department :")
                Text(employeeDetailPresenter.department)
            }
        }
    }
}

struct FZEmployeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FZEmployeeDetailView(employeeDetailPresenter: FZEmployeeDetailPresenter(employee: FZEmployee.previewList().first!))
    }
}
