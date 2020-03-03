//
//  TutorialPageList.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class TutorialPageList: NSObject, Codable, AutoTestInitializer {
    public let md5: String
    public let pageList: [TutorialPage]?

    public init(md5: String, pageList: [TutorialPage]?) {
        self.md5 = md5
        self.pageList = pageList
    }
}
