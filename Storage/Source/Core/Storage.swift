//
//  Storage.swift
//  Storage
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public protocol ClientType {
    var zad: ZADStorageType { get }
    var feed: FeedStorageType { get }
    var brand: BrandStoreType { get }
}

public typealias StorageType = ClientType


public class StorageManager {
    // MARK: - Public properties
    
    public static var shared = StorageManager()
    
    public static func setup(storageContext: StorageType) {
        shared.storageContext = storageContext
    }
    
    public var storageContext: StorageType?
    
    private func databaseUrl(_ databaseName: String) throws ->  URL {
        return try FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent(databaseName)
    }

}

