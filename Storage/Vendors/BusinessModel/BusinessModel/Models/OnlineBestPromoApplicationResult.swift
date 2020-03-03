//
//  OnlineBestPromoApplicationResult.swift
//  BusinessModel
//
//  Created by Danh Dang on 12/3/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineBestPromoApplicationResult: NSObject, Codable, AutoTestInitializer {
    
    public let success: Bool
    public let message: String
    
    public init(success: Bool, message: String) {
        self.success = success
        self.message = message
        super.init()
    }
}
