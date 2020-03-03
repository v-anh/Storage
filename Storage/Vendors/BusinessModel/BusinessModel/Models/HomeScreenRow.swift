//
//  HomeScreenRow.swift
//  Pluto
//
//  Created by NghiaTran on 3/19/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class HomeScreenRow: NSObject, Codable, AutoTestInitializer {
    public let heightRatio: Double
    public let type: String
    public let title: String
    public let headerLeftButtonName: String
    public let data: HomeScreenRowData?

    public init(heightRatio: Double, type: String, title: String, headerLeftButtonName: String, data: HomeScreenRowData?) {
        self.heightRatio = heightRatio
        self.type = type
        self.title = title
        self.headerLeftButtonName = headerLeftButtonName
        self.data = data
    }
}
