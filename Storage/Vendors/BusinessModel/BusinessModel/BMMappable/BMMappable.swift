//
//  BMConvertible.swift
//  ZaloraLive
//
//  Created by Asim Parvez on 10/12/2019.
//  Copyright © 2019 com.zalora. All rights reserved.
//

import Foundation

//For ZAD models that are convertible to Business Model
public protocol BMMappable {
    associatedtype Element: NSObject
    func mapToBusinessModel() -> Element
}
