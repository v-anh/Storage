//
//  ProductCare.swift
//  Pluto
//
//  Created by Danh Dang on 3/27/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//
import Foundation

@objcMembers
public final class ProductCare: NSObject, Codable, AutoTestInitializer {
    public let productCareAttributes: [ProductCareAttribute]

    public init(productCareAttributes: [ProductCareAttribute]) {
        self.productCareAttributes = productCareAttributes
    }
}
