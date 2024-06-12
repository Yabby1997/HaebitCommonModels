//
//  ApertureValue.swift
//  Haebit
//
//  Created by Seunghun on 12/2/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

/// A common aperture value data model for Haebit.
public struct ApertureValue: Hashable, Codable, Sendable {
    /// Actual aperture value.
    public let value: Float
    /// Title for aperture value.
    public var title: String { String(format: "ƒ%g", value) }
    /// Description for aperture value.
    public var description: String { title }
    
    /// Creates a new ``ApertureValue``.
    ///
    /// - Parameters:
    ///     - value: Actual aperture value.
    /// - Note: Returns `nil` if aperture value is invalid.
    public init?(_ value: Float) {
        guard value > .zero else { return nil }
        self.value = value
    }
}
