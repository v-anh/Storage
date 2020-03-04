
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

Storage is an GRDB Database wrapper in Swift. It grants Bussiness Models with persistence and fetching methods.


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
Since we already has the FMDB in the previos version so we need to support the migration -> Idealy we will have somekind of adapter to fetch the old ZAD format model from the the current .sql then store in the new format.

 ## Migration

  Migration is required to difine the name, type of column in table

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

 To store the Business Model like `Address`,  make it adopt `GRDBEntityType` protocol

 Note: We need to create the table for each Business Model in the  [Migration](#Migration)

```swift
import GRDB
import BusinessModel

extension Address: GRDBEntityType {}

extension GRDBContext: AddressStorageType {
    public func save(_ entity: Address, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try entity.insert(db)
        })
    }

    public func getZADByLanguage(_ language: String) throws -> [Address]? {
        let zadByLanguage = Address.filter(Column("language") == language)
        return try dbQueue.inDatabase { db in
            try zadByLanguage.fetchAll(db)
        }
    }
    
    public func clearAddressBy(_ language: String) throws  {
        try dbQueue.inDatabase { db in
            _ = try Address.filter(Column("language") == language).deleteAll(db)
        }
    }
}
```

- Provide the client interface
```swift
public protocol AddressStorageType {
    func save(_ entity: Address, for nameSpace: String) throws
    func getZADByLanguage(_ language: String) throws -> [Address]?
    func clearZADBy(_ language: String) throws
}
```

- Define Client in `GRDBContext `
```swift
public protocol ClientType {
    var address: AddressStorageType { get }
}
```

- `GRDB is not a managed ORM and GRDB can't provide implicit isolation: the application must decide when it wants to safely read information in the database, and this decision is made explicit` 

It may better to define the query interface depend on the Model type itself with simple rule: consumed data must come from a single database access method

```swift
extension GRDBContext: AddressStorageType {
    public func save(_ entity: Address, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try entity.insert(db)
        })
    }

    public func getZADByLanguage(_ language: String) throws -> [Address]? {
        let zadByLanguage = Address.filter(Column("language") == language)
        return try dbQueue.inDatabase { db in
            try zadByLanguage.fetchAll(db)
        }
    }
    
    public func clearAddressBy(_ language: String) throws  {
        try dbQueue.inDatabase { db in
            _ = try Address.filter(Column("language") == language).deleteAll(db)
        }
    }
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
            let address = Address(...)
            try StorageManager.shared.storageContext?.address.save(address, for: "SG")
        }catch {
            print(error)
    }
```


## Pros and Cons
- Pros: 
    + Flexible with query interface, it lets you write pure Swift instead of SQL
    + Support Migration
    + Support encryption with [SQLCipher](https://github.com/groue/GRDB.swift/blob/master/README.md#encryption)
    + Resued the Business Model
    + 

## [State of the project]
- How to deal with ZAD object? 
- How to deal with Objective-C?

