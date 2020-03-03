//
//  HomeScreenRowData.swift
//  Pluto
//
//  Created by NghiaTran on 3/19/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class HomeScreenRowData: NSObject, Codable, AutoTestInitializer {
    public let teasers: [HomeScreenTeaser]?
    public let dataJetEndpoint: String
    public let dataJetParameters: [String: String]?
    public let dataJetIsPersonalized: Bool
    public let minNumOfProducts: Int

    public init(teasers: [HomeScreenTeaser]?, dataJetEndpoint: String, dataJetParameters: [String: String]?, dataJetIsPersonalized: Bool, minNumOfProducts: Int) {
        self.teasers = teasers
        self.dataJetEndpoint = dataJetEndpoint
        self.dataJetParameters = dataJetParameters
        self.dataJetIsPersonalized = dataJetIsPersonalized
        self.minNumOfProducts = minNumOfProducts
    }
}
