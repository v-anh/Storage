//
//  ItemListView.swift
//  StorageExample
//
//  Created by Anh Tran on 3/4/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import SwiftUI

struct BrandListView: View {
    @ObservedObject var viewModel: BrandListViewModel
    
    init(viewModel: BrandListViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.brandRows) { data in
                    BrandRowView(viewModel: data)
                    }.onDelete(perform: delete(_:))
                .listStyle(GroupedListStyle())
                .navigationBarTitle(viewModel.title)
            }
            .navigationBarTitle(Text("Brand"), displayMode: .inline)
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {self.addBrand()}) {
                    Image(systemName: "plus.circle")
                    }
                })
        }
    }
    private func delete(_ indexSet: IndexSet) {
        viewModel.delete(index: indexSet)
    }
    
    private func addBrand() {
        viewModel.addBrand()
    }
}

struct BrandListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = BrandListViewModel(brandService: BrandService())
        return BrandListView(viewModel: viewModel).environment(\.locale, .init(identifier: "vi"))
    }
}
