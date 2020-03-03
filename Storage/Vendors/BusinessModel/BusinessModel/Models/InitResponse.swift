//
//  InitResponse.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: InitResponse Model

@objcMembers
public final class InitResponse: NSObject, Codable, AutoTestInitializer {
    public let countries: CountriesList?
    public let colors: ColorsList?
    public let shopBys: ShopByUrlList?
    public let segments: SegmentList?
    public let cacheKey: String
    public let thumborHost: String
    public let version: Version?
    public let enabledFeatures: [String]?
    public let services: Services?
    public let images: [String: Image]?
    public let networkCacheRefreshInterval: Int
    public let datajetCacheRefreshInterval: Int
    public let dataJetBaseUrl: String
    public let urls: Urls?
    public let zrsBaseUrl: String
    public let zendeskURL: String
    public let zendeskAppID: String
    public let zendeskClientID: String

    public init(countries: CountriesList?,
                colors: ColorsList?,
                shopBys: ShopByUrlList?,
                segments: SegmentList?,
                cacheKey: String,
                thumborHost: String,
                version: Version?,
                enabledFeatures: [String]?,
                services: Services?,
                images: [String: Image]?,
                networkCacheRefreshInterval: Int,
                datajetCacheRefreshInterval: Int,
                dataJetBaseUrl: String,
                urls: Urls?,
                zrsBaseUrl: String,
                zendeskURL: String,
                zendeskAppID: String,
                zendeskClientID: String) {
        self.countries = countries
        self.colors = colors
        self.shopBys = shopBys
        self.segments = segments
        self.cacheKey = cacheKey
        self.thumborHost = thumborHost
        self.version = version
        self.enabledFeatures = enabledFeatures
        self.services = services
        self.images = images
        self.networkCacheRefreshInterval = networkCacheRefreshInterval
        self.datajetCacheRefreshInterval = datajetCacheRefreshInterval
        self.dataJetBaseUrl = dataJetBaseUrl
        self.urls = urls
        self.zrsBaseUrl = zrsBaseUrl
        self.zendeskURL = zendeskURL
        self.zendeskAppID = zendeskAppID
        self.zendeskClientID = zendeskClientID
    }
}
