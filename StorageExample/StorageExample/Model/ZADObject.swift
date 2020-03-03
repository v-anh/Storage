//
//  ZADObject.swift
//  StorageExample
//
//  Created by Anh Tran on 3/3/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import Storage

public struct ZADObject: GRDBEntityType {
    public var id:Int64
    public var dataKey:String
    public var object:Data

    public init(id:Int64, dataKey: String, object: Data) {
        self.id = id
        self.dataKey = dataKey
        self.object = object
    }
}
