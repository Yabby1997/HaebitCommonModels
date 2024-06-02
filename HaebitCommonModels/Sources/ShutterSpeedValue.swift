//
//  ShutterSpeedValue.swift
//  Haebit
//
//  Created by Seunghun on 12/2/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

public struct ShutterSpeedValue: Hashable, Codable, Sendable {
    /// Actual value of shutter speed in seconds.
    public let value: Float
    public let numerator: UInt32
    public let denominator: UInt32
    public let title: String
    public let description: String
    
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
