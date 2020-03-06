//
//  StorageConfiguration.swift
//  Storage
//
//  Created by Anh Tran on 3/4/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import UIKit
public enum StorageType {
    case sql(databaseName: String)
}

public struct StorageConfiguration {
    public let storageContext: StorageType
    public let application: UIApplication?
    public let encryption:Bool
    public let logger: ((String) -> Void)?
    
    public init(storageContext: StorageType, application: UIApplication?, encryption:Bool = false, logger: ((String) -> Void)? = nil) {
        self.storageContext = storageContext
        self.application = application
        self.logger = logger
        self.encryption = encryption
    }
}
