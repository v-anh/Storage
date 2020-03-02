
# Storage

[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)

Storage is an GRDB Database wrapper in Swift.


## Content

# Storage

[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)

Storage is an GRDB Database wrapper in Swift.


## Content
 - [Why GRDB?](#GRDB)
 - [How does it work?](#how-does-it-work)
 - [Usage](#usage)
 - [Installation](#installation)
 - [Example](#example)
 - [Installation](#installation)
 - [State of the project](#state-of-the-project)
 - [Contributing](#contribute)

## GRDB
- GRDB provides raw access to SQL and advanced SQLite features: https://github.com/groue/GRDB.swift

- GRDB runs on top of SQLite so we could be able to migrate with the current database that also base on SQL  

## How does it work?

- Base on [Good Practices for Designing Record Types](https://github.com/groue/GRDB.swift/blob/master/Documentation/GoodPracticesForDesigningRecordTypes.md)


## Usage

Before insert or fetching record from Database, Migration is required to difine the name, type of column in table
 - Migration
    ```swift
    internal class var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()
        migrator.registerMigration("Zalora-v1") { database in
            try database.create(table: "ZADObject") { tableDefinition in
                tableDefinition.column("id",.integer).primaryKey()
                tableDefinition.column("dataKey",.text)
                tableDefinition.column("object",.blob)
            }
        }
        return migrator
    }
    ```
- Define Data Object
 
 
 ```swift
public struct ZADObjectRGDB:Codable, GRDBEntityType {
    public var id:Int64
    public var dataKey:String
    public var objects:Data
    
    public init(id:Int64, dataKey: String, object: Data) {
        self.id = id
        self.dataKey = dataKey
        self.objects = object
    }
    
    //Define database table name
    public static var databaseTableName: String {
        return "ZADObjectRGDB"
    }
    
    // Define database columns from CodingKeys
    enum Columns {
        static let id = Column(CodingKeys.id)
        static let dataKey = Column(CodingKeys.dataKey)
        static let objects = Column(CodingKeys.objects)
    }
}
```

- Make query interface
```swift
public protocol ZADStorageType {
    func save(_ entity: ZADObjectRGDB, for nameSpace: String) throws
    func get(for key:String, nameSpace: String) throws -> ZADObjectRGDB?
}

extension GRDBContext: ZADStorageType {
    public func save(_ entity: ZADObjectRGDB, for nameSpace: String) throws {
        try self.createOrUpdate(entity, for: nameSpace)
    }
    
    public func get(for key:String, nameSpace: String) throws -> ZADObjectRGDB? {
        return try fetch(for: key, nameSpace: nameSpace)
    }
}
```

- Define Client 
```swift
public protocol ClientType {
    var zad: ZADStorageType { get }
}
```


- Setup StorageManager
```swift
    do {
            let grdbContext = try GRDBContext(in: application)
            StorageManager.setup(storageContext: grdbContext)
        }catch {
            print(error)
    }
```

- Request data
```swift
    do {
        let zadObject = ZADObjectRGDB(id: 0, dataKey: "newkey", object: Data())
            try StorageManager.shared.storageContext?.zad.save(zadObject, for: "SG")
        }catch {
            print(error)
    }
```

