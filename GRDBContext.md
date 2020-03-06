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
            try database.create(table: "brandRGDB") { tableDefinition in
                tableDefinition.column("brandId", .text).primaryKey()
                tableDefinition.column("image", .text)
                tableDefinition.column("keywords", .text)
                tableDefinition.column("name", .text)
            }
        }
        return migrator
    }
 ```

## Setup

Storage is a singleton that wraps the storage context then provide to the client access through the `ClientType` protocol. So first step interact with the Storage is setting up the context

```swift
    // Setup Storage component
        do {
            let config = StorageConfiguration(storageContext: .sql(databaseName: "zalora"), application: application) {  print($0) }
            try Storage.setup(config: config)
        }catch {
            print(error)
        }
```
- Define Entity

Persistable Record Types are Responsible for Their Tables, so define one record type per database table, and make it adopt a `PersistableRecord` & `Fetchable` protocol and `GRDBEntityType` is a grouped of these two type

 Note: We need to create the table for each Entity in the  [Migration](#Migration)

Define the public protocol for each Entity that will expose to the Main app
```swift
public protocol BrandEntityType {
    var brandId: String { get }
    var image: String { get set}
    var keywords: String { get set}
    var name: String { get set}
}
```

Create entity adopt with `EntityType`. To make sure this entity able to persistable or fetchable we need to adopt with  `GRDBEntityType`

Mapping will tranform from EntityType to GRDB Entity
```swift
public struct BrandRGDB: Codable, BrandEntityType, GRDBEntityType {
    public var brandId: String
    public var image: String
    public var keywords: String
    public var name: String

    public init(brandId: String ,image: String, keywords: String, name: String) {
        self.brandId = brandId
        self.image = image
        self.keywords = keywords
        self.name = name
    }
    
    static func map(_ brand: BrandEntityType) -> BrandRGDB {
        return BrandRGDB(brandId: brand.brandId, image: brand.image, keywords: brand.keywords, name: brand.name)
    }
}
```

- In order to make appropriate persist to the database, we should call through specific StorageType. The `BrandClientType` is an example
 
```swift
public protocol BrandClientType {
    func save(_ entity: BrandEntityType, for nameSpace: String) throws
    func getBrandByLanguage(_ language: String) throws -> [BrandEntityType]?
    func clearBrandBy(_ language: String) throws
    func delete(_ id: String) throws -> Int
```

- `GRDB is not a managed ORM and GRDB can't provide implicit isolation: the application must decide when it wants to safely read the information in the database, and this decision is made explicit` 

It may better to define the query interface depend on the Model type itself with a simple rule: consumed data must come from a single database access method

```swift
extension GRDBContext: BrandClientType {
    public func delete(_ id: String) throws -> Int {
        return try dbQueue.inDatabase({ db in
            try BrandRGDB.filter(Column("brandId") == id).deleteAll(db)
        })
    }
    
    public func save(_ entity: BrandEntityType, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try BrandRGDB.map(entity).insert(db)
        })
    }

    public func getBrandByLanguage(_ language: String) throws -> [BrandEntityType]? {
        return try dbQueue.inDatabase { db in
            try BrandRGDB.fetchAll(db)
        }
    }
    
    public func clearBrandBy(_ language: String) throws  {
        try dbQueue.inDatabase { db in
            _ = try BrandRGDB.filter(Column("language") == language).deleteAll(db)
        }
    }
}
```

## Usage

- Making request
```swift
    let brand = Brand(...)
    try Storage.shared.storageContext?.brand.save(brand)
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

