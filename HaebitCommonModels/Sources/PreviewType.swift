//
//  PreviewType.swift
//  HaebitCommonModels
//
//  Created by Seunghun on 5/21/25.
//  Copyright © 2025 seunghun. All rights reserved.
//

import Foundation

/// Types of preview screen type.
public enum PreviewType: CaseIterable, Identifiable, Codable, Sendable {
    case fullScreen
    case fullCoverage
    
    /// Identifier of perforation shape.
    public var id: String { description }
    
    /// Description for perforation shapes.
    public var description: String {
        switch self {
        case .fullScreen: return "Full Screen"
        case .fullCoverage: return "Full Coverage"
        }
    }
}
