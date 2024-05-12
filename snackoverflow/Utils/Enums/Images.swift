//
//  Images.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

enum Images: String {
    case juice = "img_juice"
}

enum ImageItems {
    enum Authentication: String {
        case login = "wolcano"
    }
}

extension String {
    func images() -> Image {
        return Image(self)
    }
}
