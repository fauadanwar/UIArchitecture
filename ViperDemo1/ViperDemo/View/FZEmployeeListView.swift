//
//  FZEmployeeListView.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//

import SwiftUI

struct FZEmployeeListView: View {
    @ObservedObject var listPresenter: FZListPresenter
    
    var body: some View {
        NavigationView {
            VStack{
                if listPresenter.detailPresenters.isEmpty
                {
                    Text("Loading...")
                }
                else
                {
                    List {
                        ForEach(0..<listPresenter.detailPresenters.count, id: \.self)
                        { index in
                            NavigationLink(destination: listPresenter.getFZEmployeeDetailView(employeeDetailPresenter: listPresenter.detailPresenters[index])) {
                                HStack {
                                    Text("Name:")
                                    Spacer()
                                    Text(listPresenter.detailPresenters[index].name)
                                }
                            }
                        }
                    }
                    .refreshable {
                        listPresenter.getEmployees()
                    }
                    .listStyle(InsetListStyle())
                }
            }
            .navigationBarTitle("Employees", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        listPresenter.getEmployees()
                    } label: {
                        Image(systemName: "square.and.arrow.down")
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FZEmployeeListView_Previews: PreviewProvider {
    static var previews: some View {
        let listRouter = FZListRouter()
        let lisInteractor = FZLisInteractor()
        let listPresenter = FZListPresenter(listRouter: listRouter, lisInteractor: lisInteractor)
        FZEmployeeListView(listPresenter: listPresenter)
    }
}
