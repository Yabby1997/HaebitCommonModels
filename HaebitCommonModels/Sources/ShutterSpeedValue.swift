//
//  ShutterSpeedValue.swift
//  Haebit
//
//  Created by Seunghun on 12/2/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

/// A common shutter speed data model for Haebit.
public struct ShutterSpeedValue: Hashable, Codable, Sendable {
    /// Actual value of shutter speed in seconds.
    public let value: Float
    /// Numerator value of shutter speed.
    public let numerator: UInt32
    /// Denominator value of shutter speed.
    public let denominator: UInt32
    /// Title for shutter speed.
    public let title: String
    /// Description for shutter speed.
    public let description: String
    
    /// Creates a new ``ShutterSpeedValue`` with numerator and denominator.
    ///
    /// - Parameters:
    ///     - numerator: Numerator value of shutter speed. Default value is 1.
    ///     - denominator: Denominator value of shutter speed. Default value is 1.
    /// - Note: Returns `nil` if numerator or denominator is invalid.
    public init?(numerator: UInt32 = 1, denominator: UInt32 = 1) {
        guard numerator > .zero, denominator > .zero else { return nil }
        self.value = Float(numerator) / Float(denominator)
        self.title = (numerator == 1 && denominator != 1) ? "¹⁄" + denominator.subscriptString + "s" : "\(numerator)s"
        self.description = (numerator == 1 && denominator != 1) ? "¹⁄ \(denominator)s" : "\(numerator)s"
        self.numerator = numerator
        self.denominator = denominator
    }
}

extension UInt32 {
    fileprivate var subscriptString: String {
        String(self).compactMap { $0.subscript }.reduce("") { $0 + String($1) }
    }
}

extension String.Element {
    fileprivate var `subscript`: Self? {
        switch self {
        case "0": return "₀"
        case "1": return "₁"
        case "2": return "₂"
        case "3": return "₃"
        case "4": return "₄"
        case "5": return "₅"
        case "6": return "₆"
        case "7": return "₇"
        case "8": return "₈"
        case "9": return "₉"
        default: return nil
        }
    }
}
