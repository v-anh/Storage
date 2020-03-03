//
//  AppDelegate.swift
//  StorageExample
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import UIKit
import Storage

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    ///
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        do {
            let grdbContext = try GRDBContext(in: application)
            StorageManager.setup(storageContext: grdbContext)
        }catch {
            print(error)
        }
        
        do {
            let zadObject1 = ZADObjectGRDB(id: 0, dataKey: "object1", object: Data(),locationName: "Singapore",language: "EN")
            try StorageManager.shared.storageContext?.zad.save(zadObject1, for: "")
            
            let zadObject2 = ZADObjectGRDB(id: 0, dataKey: "object2", object: Data(),locationName: "VietNam",language: "VN")
            try StorageManager.shared.storageContext?.zad.save(zadObject2, for: "")
            
            let zadObject3 = ZADObjectGRDB(id: 0, dataKey: "object3", object: Data(),locationName: "VietNam",language: "EN")
            try StorageManager.shared.storageContext?.zad.save(zadObject3, for: "")
            
            let zadObject4 = ZADObjectGRDB(id: 0, dataKey: "object4", object: Data(),locationName: "VietNam",language: "VN")
            try StorageManager.shared.storageContext?.zad.save(zadObject4, for: "")
        }catch {
            print(error)
        }
        
        do {
            let feedObj = FeedRGDB(id: 0, feedName: "Feed name", feedPosition: 10)
            try StorageManager.shared.storageContext?.feed.save(feedObj, for: "SG")
            
            let feedObj1 = FeedRGDB(id: 0, feedName: "Feed name", feedPosition: 10)
            try StorageManager.shared.storageContext?.feed.save(feedObj1, for: "SG")
            
            let feedObj2 = FeedRGDB(id: 0, feedName: "Feed name", feedPosition: 10)
            try StorageManager.shared.storageContext?.feed.save(feedObj2, for: "SG")
        }catch {
            print(error)
        }
        
        do {
            let result = try StorageManager.shared.storageContext?.feed.getFeed("EN")
            print(String(describing: result))
        }catch {
            print(error)
        }
        
        do {
            let result = try StorageManager.shared.storageContext?.zad.getZADByLanguage("EN")
            print(String(describing: result))
        }catch {
            print(error)
        }
        
        do {
            try StorageManager.shared.storageContext?.zad.clearZADBy("VN")
        }catch {
            print(error)
        }
        
        do {
            let result = try StorageManager.shared.storageContext?.zad.getZADByLanguage("VN")
            print(String(describing: result))
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


