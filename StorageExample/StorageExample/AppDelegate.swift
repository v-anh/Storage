//
//  AppDelegate.swift
//  StorageExample
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import UIKit
import Storage
import BusinessModel

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        // Setup Storage component
        do {
            let config = StorageConfiguration(storageContext: .sql(databaseName: "zalora"), application: application) {  print($0) }
            try Storage.setup(config: config)
        }catch {
            print(error)
        }
        
        return true
    }
}

