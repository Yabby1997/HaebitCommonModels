//
//  FocalLenthValue.swift
//  Haebit
//
//  Created by Seunghun on 12/22/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

public struct FocalLengthValue: Hashable, Codable, Sendable {
    public let value: Int
    public var title: String { "\(value)mm" }
    
    public init(value: Int) {
        self.value = value
    }
}
