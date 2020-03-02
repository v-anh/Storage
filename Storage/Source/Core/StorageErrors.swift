//
//  StorageContext.swift
//  Storage
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation

public struct StorageErrors {
    enum Entity: Error {
        /// This error is thrown when there is a CRUD operation request using a wrong entity type.
        /// Correct types:
        /// - Core Data: `NSManagedObject` subclasses
        /// - Realm: `Object` subclasses
        case wrongType
    }
}
