//
//  FeedbackStyle.swift
//  HaebitCommonModels
//
//  Created by Seunghun on 10/2/24.
//  Copyright © 2024 seunghun. All rights reserved.
//

import Foundation

public enum FeedbackStyle: CaseIterable, Identifiable, Sendable {
    case heavy
    case medium
    case light
    case rigid
    case soft
    
    public var id: String { description }
    
    public var description: String {
        switch self {
        case .heavy: return "Heavy"
        case .medium: return "Medium"
        case .light: return "Light"
        case .rigid: return "Rigid"
        case .soft: return "Soft"
        }
    }
}
