//
//  ApertureValue.swift
//  Haebit
//
//  Created by Seunghun on 12/2/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

public struct ApertureValue: Hashable, Codable, Sendable {
    public let value: Float
    public var title: String { String(format: "ƒ%g", value) }
    public var description: String { title }
    
    public init(value: Float) {
        self.value = value
    }
}
