//
//  ShutterSpeedValue.swift
//  Haebit
//
//  Created by Seunghun on 12/2/23.
//  Copyright © 2023 seunghun. All rights reserved.
//

import Foundation

public struct ShutterSpeedValue: Hashable, Codable, Sendable {
    public let denominator: Float
    public var value: Float { 1 / denominator }
    public var title: String { isLessThanOneSecond ? "¹⁄" + Int(denominator).subscriptString + "s" : "\(Int(1 / denominator))s" }
    public var description: String { isLessThanOneSecond ? "¹⁄ \(Int(denominator))s" : "\(Int(1 / denominator))s" }
    private var isLessThanOneSecond: Bool { denominator > 1 }
    
    public init?(denominator: Float) {
        guard denominator > .zero else { return nil }
        self.denominator = denominator
    }
    
    public init?(seconds: Int) {
        guard seconds > .zero else { return nil }
        self.denominator = 1 / Float(seconds)
    }
}

extension Int {
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
