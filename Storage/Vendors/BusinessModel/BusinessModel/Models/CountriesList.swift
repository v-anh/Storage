//
//  CountriesList.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: CountriesList Model

@objcMembers
public final class CountriesList: NSObject, Codable, AutoTestInitializer {
    public let md5: String
    public let countries: [Country]?

    public init(md5: String, countries: [Country]?) {
        self.md5 = md5
        self.countries = countries
    }
}
