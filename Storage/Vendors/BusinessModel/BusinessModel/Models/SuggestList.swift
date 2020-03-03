//
//  SuggestList.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class SuggestList: NSObject, Codable, AutoTestInitializer {
    public let suggests: [Suggest]?
    public let brands: [BrandSuggestion]?
    public let categories: [CategorySuggestion]?
    public let correctionHighlights: [CorrectionHighlight]?
    public let searchTerm: String
    public let userSearchTerm: String

    public init(suggests: [Suggest]?, brands: [BrandSuggestion]?, categories: [CategorySuggestion]?, correctionHighlights: [CorrectionHighlight]?, searchTerm: String, userSearchTerm: String) {
        self.suggests = suggests
        self.brands = brands
        self.categories = categories
        self.correctionHighlights = correctionHighlights
        self.searchTerm = searchTerm
        self.userSearchTerm = userSearchTerm
    }
}
