//
//  StaticForm.swift
//  Pluto
//
//  Created by NghiaTran on 3/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Form: NSObject, Codable, AutoTestInitializer {
    public let formId: String
    public let method: String
    public let action: String
    public let fields: [Field]?

    public init(formId: String, method: String, action: String, fields: [Field]?) {
        self.formId = formId
        self.method = method
        self.action = action
        self.fields = fields
    }
}
