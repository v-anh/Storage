//
//  Storage.swift
//  Storage
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB
import UIKit

public protocol ClientType {
    var brand: BrandClientType { get }
}

public protocol ContextType {
    func clearAllData()
}

public typealias StorageContext = ClientType & ContextType

public final class Storage {
    
    public static var shared = Storage()
    
    public var storageContext: StorageContext?
    
    public static func setup(config: StorageConfiguration) throws {
        switch config.storageContext {
        case .sql(let databaseName):
            shared.storageContext = try GRDBContext(in: config.application,
                                                    databaseName: databaseName,
                                                    trace: config.logger)
        }
    }
}


