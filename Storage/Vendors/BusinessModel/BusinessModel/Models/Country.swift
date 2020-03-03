//
//  Country.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Country Model

@objcMembers
public final class Country: NSObject, Codable, AutoTestInitializer {
    public let ident: String
    public let descriptionName: String
    public let flag: String
    public let apiUrl: String
    public let iso2: String
    public let checkoutUrl: String
    public let languages: [Language]?
    public let currency: Currency?
    public let active: Bool
    public let shopCatalogs: [ShopCatalog]?
    public let magazine: Magazine?
    public let exchange_return_url: String

    public init(ident: String, descriptionName: String, flag: String, apiUrl: String, iso2: String, checkoutUrl: String, languages: [Language]?, currency: Currency?, active: Bool, shopCatalogs: [ShopCatalog]?, magazine: Magazine?, exchange_return_url: String) {
        self.ident = ident
        self.descriptionName = descriptionName
        self.flag = flag
        self.apiUrl = apiUrl
        self.iso2 = iso2
        self.checkoutUrl = checkoutUrl
        self.languages = languages
        self.currency = currency
        self.active = active
        self.shopCatalogs = shopCatalogs
        self.magazine = magazine
        self.exchange_return_url = exchange_return_url
    }
}
