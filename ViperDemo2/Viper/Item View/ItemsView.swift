//
//  ItemsView.swift
//  Viper
//
//  Created by Fauad Anwar on 28/09/22.
//

import SwiftUI

struct ItemsView: View {
    @ObservedObject var itemsPresentor: ItemsPresentor
    
    var body: some View {
        ScrollView() {
            if itemsPresentor.items.isEmpty
            {
                Text(itemsPresentor.message)
                    .padding()
            }
            else
            {
                LazyVStack(alignment: .leading, spacing: 0, pinnedViews: .sectionHeaders) {
                    Section(header: BTHeaderView(text: "Catalog")) {
                        ForEach(itemsPresentor.items) { item in
                            ZStack
                            {
                                Rectangle().stroke(.gray)
                                VStack(alignment: .leading, spacing: 0) {
                                    HStack(alignment: .top, spacing: 0)
                                    {
                                        Text("Item", comment: "Product Name")
                                            .padding()
                                        Spacer()
                                        Text(item.productName)
                                            .padding()
                                    }
                                    HStack(alignment: .top, spacing: 0)
                                    {
                                        Text("Order Status", comment: "Order status for Product")
                                            .padding()
                                        Spacer()
                                        Text(item.productOrderStatus)
                                            .padding()
                                    }
                                    HStack(alignment: .top, spacing: 0)
                                    {
                                        Text("Size", comment: "Product size")
                                            .padding()
                                        Spacer()
                                        Text(item.productSize)
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .clipped()
        .onAppear()
        {
            itemsPresentor.getItems()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let itemsPresentor = ItemsPresentor()
        ItemsView(itemsPresentor: itemsPresentor)
            .environment(\.locale, .init(identifier: "en"))
    }
}
