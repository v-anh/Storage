//
//  BrandRowView.swift
//  StorageExample
//
//  Created by Anh Tran on 3/4/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import SwiftUI

struct BrandRowView: View {
    @ObservedObject var viewModel: BrandRowViewModel
    
    init(viewModel: BrandRowViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack {
            Text(viewModel.title)
            Spacer()
            Text(viewModel.value)
        }
        .padding(.horizontal)
    }
}

