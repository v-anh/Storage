//
//  CMSResponse.swift
//  BusinessModel
//
//  Created by Asim Parvez on 07/11/2019.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class CMSResponse: NSObject, Codable, AutoTestInitializer {
    public let text: String
    public let data: String
    
    public init(text: String, data: String) {
        self.text = text
        self.data = data
    }
}
