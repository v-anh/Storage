//
//  BrandRowViewModel.swift
//  StorageExample
//
//  Created by Anh Tran on 3/4/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import Combine
import BusinessModel

class BrandRowViewModel: ObservableObject, Identifiable {
    var id: String
    @Published var title: String = ""
    @Published var value: String = ""
    
    init(data: Brand) {
        id = data.brandId
        title = data.name
        value = data.keywords
    }
}

extension Brand: Identifiable {
    
}
