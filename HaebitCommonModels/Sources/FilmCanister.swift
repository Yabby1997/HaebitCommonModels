//
//  FilmCanister.swift
//  HaebitCommonModels
//
//  Created by Seunghun on 9/27/24.
//  Copyright © 2024 seunghun. All rights reserved.
//

import Foundation

/// Types of 135 format film canisters.
public enum FilmCanister: CaseIterable, Codable, Sendable {
    case kodakUltramax400
    case kodakColorPlus200
    case kodakGold200
    case kodakE100
    case kodakPortra800
    case cinestill800T
    case cinestill400D
    case cinestill50D
    case ilfordXP2
    case fujiXtra400
    
    /// Description for film canisters.
    public var description: String {
        switch self {
        case .kodakUltramax400: return "Ultra 400"
        case .kodakColorPlus200: return "Color 200"
        case .kodakGold200: return "Gold 200"
        case .kodakE100: return "E100"
        case .kodakPortra800: return "FORTRA 800"
        case .cinestill800T: return "800T"
        case .cinestill400D: return "400D"
        case .cinestill50D: return "50D"
        case .ilfordXP2: return "XR2 Super"
        case .fujiXtra400: return "X-TRIX 400"
        }
    }
}
