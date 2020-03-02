//
//  Storage.swift
//  Storage
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB
//===============CLIENT=======================================


//=============================================================
public struct StorageConfiguration {
    public let path: String
    public init(_ path:String){
        self.path = path
    }
}

public class StorageManager {
    // MARK: - Public properties
    public static var zad: ZADStorageType? { return StorageManager.shared.storageContext }
    
    public static func setup(storageContext: GRDBContext) {
        shared.storageContext = storageContext
    }
    
    // MARK: - Private properties
    private var storageContext: GRDBContext?
    
    private static var shared = StorageManager()}

public struct SortDescriptor {
    let key: String
    let ascending: Bool

    public init(key: String, ascending: Bool = true) {
        self.key = key
        self.ascending = ascending
    }
}
