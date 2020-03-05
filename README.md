# Storage

[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)

Storage is the Database store module in swift that using GRDB as the core. It grants Bussiness Models with persistence and fetching methods.


## Content
 - [Why GRDB?](#GRDB)
 - [Migration](#Migration)
 - [Setup](#Setup)
 - [Usage](#usage)
 - [Sample Project](#Sample-Project)
 - [Pros and Cons](#Pros-and-Cons)
 - [Improvement](#Improvement)

## GRDB
- GRDB provides raw access to SQL and advanced SQLite features: https://github.com/groue/GRDB.swift

- GRDB runs on top of SQLite so we could able to migrate with the current database that also bases on SQL  

- Base on [Good Practices for Designing Record Types](https://github.com/groue/GRDB.swift/blob/master/Documentation/GoodPracticesForDesigningRecordTypes.md)


## Migration

Migration is required to define the name, type of column in table

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

## Setup

StorageManager is a singleton that wraps the storage context then provide to the client access through the `ClientType` protocol. So first step interact with the Storage is setting up the context

```swift
    do {
            let grdbContext = try GRDBContext(in: application)
            StorageManager.setup(storageContext: grdbContext)
        } catch {
            print(error)
    }
```
Since we already have the FMDB in the previous version so we need to support the migration -> Ideally we will have some kind of adapter to fetch the old ZAD format model from the current .sql then store in the new format.

- Define Data Model

Persistable Record Types are Responsible for Their Tables, so define one record type per database table, and make it adopt a `PersistableRecord` & `Fetchable` protocol and `GRDBEntityType` is a grouped of these two type

 Note: We need to create the table for each Business Model in the  [Migration](#Migration)

```swift
struct Author: Codable {
    var id: Int64?
    var name: String
    var country: String?
}

// Add Database access
extension Author: GRDBEntityType {
    // OPtional: Update auto-incremented id upon successful insertion
    mutating func didInsert(with rowID: Int64, for column: String?) {
        id = rowID
    }
}
```

To reuse the Bussiness Model, just make it adopt with `GRDBEntityType` 

```swift
import GRDB
import BusinessModel

extension Address: GRDBEntityType {}
```


- In order to make appropriate persist to the database, we should call through specific StorageType. The `AddressStorageType` is an example
 
```swift
public protocol AddressStorageType {
    func save(_ entity: Address, for nameSpace: String) throws
    func getZADByLanguage(_ language: String) throws -> [Address]?
    func clearZADBy(_ language: String) throws
}
```

- `GRDB is not a managed ORM and GRDB can't provide implicit isolation: the application must decide when it wants to safely read the information in the database, and this decision is made explicit` 

It may better to define the query interface depend on the Model type itself with a simple rule: consumed data must come from a single database access method

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

## Usage

- Making request
```swift
    do {
            let address = Address(...)
            try StorageManager.shared.storageContext?.address.save(address, for: "SG")
        }catch {
            print(error)
    }
```

## Sample Project
- In the Sample project included in the repo: I made simple add and delete brand that uses the Storage

- In the Storage that is injected the Business model (Brand), so just make the query interface for the Brand. For instance, are `addBrand` and `deleteBrandById`

## Pros and Cons
- Pros: 
    + Flexible with query interface, it lets you write pure Swift instead of SQL
    + Support Migration
    + Support encryption with [SQLCipher](https://github.com/groue/GRDB.swift/blob/master/README.md#encryption)
    + Resued the Business Model
 - Cons: 
    + Manual define table & column in Migration
    + Need to define the query function for each type of Model instead of generic one 

## Improvement
- How to deal with ZAD object? 
- How to deal with Objective-C?

