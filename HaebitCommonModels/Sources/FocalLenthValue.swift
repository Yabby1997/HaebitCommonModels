//
//  FocalLenthValue.swift
//  Haebit
//
//  Created by Seunghun on 12/22/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

/// A common focal length data model for Haebit.
public struct FocalLengthValue: Hashable, Codable, Sendable {
    /// Actual focal length value.
    public let value: UInt32
    /// Title for focal length.
    public var title: String { "\(value)mm" }
    
    /// Creates a new ``FocalLengthValue``.
    ///
    /// - Parameters:
    ///     - value: Actual focal length value.
    /// - Note: Returns `nil` if focal length is invalid.
    public init?(_ value: UInt32) {
        guard value > .zero else { return nil }
        self.value = value
    }
}
