//
//  HomeScreenRows.swift
//  Pluto
//
//  Created by NghiaTran on 3/19/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class HomeScreen: NSObject, Codable, AutoTestInitializer {
    public let rows: [HomeScreenRow]?

    public init(rows: [HomeScreenRow]?) {
        self.rows = rows
    }
}
