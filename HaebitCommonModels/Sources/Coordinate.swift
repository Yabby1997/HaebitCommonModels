//
//  Coordinate.swift
//  HaebitDev
//
//  Created by Seunghun on 2/18/24.
//  Copyright © 2024 seunghun. All rights reserved.
//

import Foundation

/// A common coordinate data model for Haebit.
public struct Coordinate: Equatable, Hashable, Sendable {
    /// Latitude value of coordinate.
    public let latitude: Double
    /// Longitude value of coordinate.
    public let longitude: Double
    
    /// Creates a new ``Coordinate`` with latitude and longitude.
    ///
    /// - Parameters:
    ///     - latitude: Latitude value of coordinate.
    ///     - longitude: Longitude value of coordinate.
    /// - Note: Returns `nil` if latitude or longitude is invalid.
    public init?(latitude: Double, longitude: Double) {
        guard (-90...90).contains(latitude), (-180...180).contains(longitude) else { return nil }
        self.latitude = latitude
        self.longitude = longitude
    }
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        abs(lhs.latitude - rhs.latitude) <= 0.00001 && abs(lhs.longitude - rhs.longitude) <= 0.00001
    }
}
