//
//  Field.swift
//  Pluto
//
//  Created by NghiaTran on 3/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Field: NSObject, Codable, AutoTestInitializer {
    public let key: String
    public let type: String
    public let label: String
    public let value: String
    public let hint: String
    public let keyboardType: String
    public let rules: [Rule]?
    public let dataset: [String]?
    public let datasetTranslation: [String: String]?
    public let addressDatasource: String
    public let fieldDependencies: [FieldDependency]?
    public let isCustomerPassword: Bool

    public init(key: String, type: String, label: String, value: String, hint: String, keyboardType: String, rules: [Rule]?, dataset: [String]?, datasetTranslation: [String: String]?, addressDatasource: String, fieldDependencies: [FieldDependency]?, isCustomerPassword: Bool) {
        self.key = key
        self.type = type
        self.label = label
        self.value = value
        self.hint = hint
        self.keyboardType = keyboardType
        self.rules = rules
        self.dataset = dataset
        self.datasetTranslation = datasetTranslation
        self.addressDatasource = addressDatasource
        self.fieldDependencies = fieldDependencies
        self.isCustomerPassword = isCustomerPassword
    }
}
