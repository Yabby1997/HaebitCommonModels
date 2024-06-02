//
//  FocalLenthValue.swift
//  Haebit
//
//  Created by Seunghun on 12/22/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

public struct FocalLengthValue: Hashable, Codable, Sendable {
    public let value: UInt32
    public var title: String { "\(value)mm" }
    
    public init?(_ value: UInt32) {
        guard value > .zero else { return nil }
        self.value = value
    }
}
