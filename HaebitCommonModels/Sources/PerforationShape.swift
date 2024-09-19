//
//  PerforationShape.swift
//  HaebitCommonModels
//
//  Created by Seunghun on 9/19/24.
//  Copyright © 2024 seunghun. All rights reserved.
//

import Foundation

/// Types of perforation shape in 135 format films.
public enum PerforationShape {
    case bh
    case ks
    
    /// Description for perforation shapes.
    public var description: String {
        switch self {
        case .bh: return "Bell and Howell"
        case .ks: return "Kodak Standard"
        }
    }
}
