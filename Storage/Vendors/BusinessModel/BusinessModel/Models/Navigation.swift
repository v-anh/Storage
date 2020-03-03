
//
//  Navigation.swift
//  Pluto
//
//  Created by NghiaTran on 3/15/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Navigation: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public let type: String
    public let url: String
    public let imageUrl: String
    public let menImageUrl: String
    public let womenImageUrl: String
    public let previewImageUrl: String
    public let kidImageUrl: String
    public let cms: String

    public init(label: String, type: String, url: String, imageUrl: String, menImageUrl: String, womenImageUrl: String, previewImageUrl: String, kidImageUrl: String, cms: String) {
        self.label = label
        self.type = type
        self.url = url
        self.imageUrl = imageUrl
        self.menImageUrl = menImageUrl
        self.womenImageUrl = womenImageUrl
        self.previewImageUrl = previewImageUrl
        self.kidImageUrl = kidImageUrl
        self.cms = cms
    }
}
