//
//  FieldDependency.swift
//  Pluto
//
//  Created by NghiaTran on 3/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class FieldDependency: NSObject, Codable, AutoTestInitializer {
    public let fieldKey: String
    public let dataSourceParameterName: String

    public init(fieldKey: String, dataSourceParameterName: String) {
        self.fieldKey = fieldKey
        self.dataSourceParameterName = dataSourceParameterName
    }
}
