//
//  Filter.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 1/29/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Filter: NSObject, Codable, AutoTestInitializer {
    public let filterId: String
    public let lable: String
    public let type: String
    public let multi: Bool
    public let options: [FilterOption]?
    public let widget: FilterWidget?
    public let uspCmsKey: String
    public let group: FilterGroup

    public init(filterId: String, lable: String, type: String, multi: Bool, options: [FilterOption]?, widget: FilterWidget?, uspCmsKey: String, group: FilterGroup) {
        self.filterId = filterId
        self.lable = lable
        self.type = type
        self.multi = multi
        self.options = options
        self.widget = widget
        self.uspCmsKey = uspCmsKey
        self.group = group
    }
}

@objc public enum FilterGroup : Int, Codable {
    case global
    case onSite
}
