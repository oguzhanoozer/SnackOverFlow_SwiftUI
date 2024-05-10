//
//  DynamicSize+GeometryProxy.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

extension GeometryProxy {
    /// Dynamic Height by Device
    /// - Parameter height: Percent Value
    /// - Returns: Calculated value for device height
    func dh(height: Double) -> Double {
        return size.height * height
    }

    /// Dynamic Width by Device
    /// - Parameter height: Percent Value
    /// - Returns: Calculated value for device width
    func dw(width: Double) -> Double {
        return size.width * width
    }
}
