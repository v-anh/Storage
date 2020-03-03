//
//  ProductDetailSize.swift
//  Pluto
//
//  Created by Danh Dang on 3/29/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ProductDetailSize: NSObject, Codable, AutoTestInitializer {
    public let configSku: String
    public let measurements: String
    public let modelsBodyMeasurements: String
    public let sizeChart: String

    public init(configSku: String,
                measurements: String,
                modelsBodyMeasurements: String,
                sizeChart: String) {
        self.configSku = configSku
        self.measurements = measurements
        self.modelsBodyMeasurements = modelsBodyMeasurements
        self.sizeChart = sizeChart
    }
}
