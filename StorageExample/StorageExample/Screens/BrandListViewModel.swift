//
//  BrandListViewModel.swift
//  StorageExample
//
//  Created by Anh Tran on 3/4/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import Combine
import BusinessModel

class BrandListViewModel: ObservableObject, Identifiable {
    @Published var brandRows: [BrandRowViewModel] = []
    @Published var title: String = ""
    
    private let brandService: BrandServiceProtocol
    private var disposables = Set<AnyCancellable>()
    
    init(brandService: BrandServiceProtocol) {
        self.brandService = brandService
        getBrandList()
    }
    
    func getBrandList() {
        self.brandService
            .getBrandList()
            .sink(receiveCompletion: { [weak self] value in
                guard let self = self else { return }
                switch value {
                case .failure:
                    self.brandRows = []
                case .finished:
                    break
                }
            }) { [weak self] brandList in
                guard let self = self else { return }
                self.brandRows = brandList
                    .map({BrandRowViewModel.init(data: $0)})
        }.store(in: &disposables)
    }
    
    func delete(index: IndexSet) {
        guard let firstIndex = index.first else {return}
        let idToDelete = self.brandRows[firstIndex].id
        self.brandService.delete(id: idToDelete)
            .sink(receiveCompletion: { [weak self] value in
                guard let self = self else { return }
                switch value {
                case .failure:
                    self.brandRows = []
                case .finished:
                    break
                }
            }) { [weak self] _ in
                self?.brandRows.remove(atOffsets: index)
        }.store(in: &disposables)
    }
    
    func addBrand() {
        self.brandService.addRandomBrand()
            .sink(receiveCompletion: { _ in
                }) { [weak self] _ in
                    self?.getBrandList()
            }.store(in: &disposables)
    }
}
