//
//  Coordinate.swift
//  HaebitDev
//
//  Created by Seunghun on 2/18/24.
//  Copyright © 2024 seunghun. All rights reserved.
//

import Foundation

public struct Coordinate: Equatable, Hashable, Sendable {
    public let latitude: Double
    public let longitude: Double
    
    public init?(latitude: Double, longitude: Double) {
        guard (-90...90).contains(latitude), (-180...180).contains(longitude) else { return nil }
        self.latitude = latitude
        self.longitude = longitude
    }
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        abs(lhs.latitude - rhs.latitude) <= 0.00001 && abs(lhs.longitude - rhs.longitude) <= 0.00001
    }
}
