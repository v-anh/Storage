//
//  CorrectionHighlight.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: CorrectionHighlight Model

@objcMembers
public final class CorrectionHighlight: NSObject, Codable, AutoTestInitializer {
    public let startIndex: Int
    public let length: Int
    public let term: String

    public init(startIndex: Int, length: Int, term: String) {
        self.startIndex = startIndex
        self.length = length
        self.term = term
    }
}
