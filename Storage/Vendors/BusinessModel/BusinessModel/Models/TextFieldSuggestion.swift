//
//  TextFieldSuggestion.swift
//  ZaloraNetworking
//
//  Created by Minh Nguyen on 9/25/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: TextFieldSuggestion Model

@objcMembers
public final class TextFieldSuggestion: NSObject, Codable, AutoTestInitializer {
    public let suggestion: String

    public init(suggestion: String) {
        self.suggestion = suggestion
    }
}
