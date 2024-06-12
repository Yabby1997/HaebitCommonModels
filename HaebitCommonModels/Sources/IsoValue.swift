//
//  IsoValue.swift
//  Haebit
//
//  Created by Seunghun on 12/2/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

/// A common ISO data model for Haebit.
public struct IsoValue: Hashable, Codable, Sendable {
    /// Actual ISO value.
    public var value: UInt32
    /// Title for ISO.
    public var title: String { "\(value)" }
    /// Description for ISO.
    public var description: String { title }
    
    /// Creates a new ``IsoValue``.
    ///
    /// - Parameters:
    ///     - value: Actual ISO value.
    /// - Note: Returns `nil` if ISO is invalid.
    public init?(_ value: UInt32) {
        guard value > .zero else { return nil }
        self.value = value
    }
}
