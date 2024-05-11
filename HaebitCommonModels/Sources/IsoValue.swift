//
//  IsoValue.swift
//  Haebit
//
//  Created by Seunghun on 12/2/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

public struct IsoValue: Hashable, Codable, Sendable {
    public let iso: Int
    public var value: Float { Float(iso) }
    public var title: String { "\(iso)" }
    public var description: String { title }
    
    public init(iso: Int) {
        self.iso = iso
    }
}
