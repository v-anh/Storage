//
//  StorageHelper.swift
//  Storage
//
//  Created by Anh Tran on 3/6/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation

struct StorageHelper {
    static func getDatabaseUrl(databaseName:String) throws -> URL {
        return try FileManager.default
        .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        .appendingPathComponent("\(databaseName).sql")
    }
}
