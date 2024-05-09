//
//  LocaleKeys.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

struct LocaleKeys{
    enum Auth: String{
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case custom = "signUpWithEmail"
    }
}


extension String{
    /// It localize any strings from Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey{
        return LocalizedStringKey(self)
    }
}
