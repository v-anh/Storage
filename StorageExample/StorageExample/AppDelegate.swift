//
//  AppDelegate.swift
//  StorageExample
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import UIKit
import Storage
import GRDB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    ///
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        do {
            let grdbContext = try GRDBContext(in: application)
            StorageManager.setup(storageContext: grdbContext)
            let a = ZADObjectRGDB(id: 0, dataKey: "key", object: Data())
            try StorageManager.shared.storageContext?.addOrUpdate(a, for: "v-anh")
        }catch {
            print(error)
        }
        
        
        do {
            let a = try StorageManager.shared.storageContext?.fetch(with: "key", for: ZADObjectRGDB.self)
            print(a)
        }catch {
            print(error)
        }
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

struct Player: Codable, FetchableRecord, MutablePersistableRecord {
    var id: Int64
    var name: String
    var score: Int
    
    // Define database columns from CodingKeys
    private enum Columns {
        static let id = Column(CodingKeys.id)
        static let name = Column(CodingKeys.name)
        static let score = Column(CodingKeys.score)
    }
    
    // Update a player id after it has been inserted in the database.
    mutating func didInsert(with rowID: Int64, for column: String?) {
        id = rowID
    }
}
