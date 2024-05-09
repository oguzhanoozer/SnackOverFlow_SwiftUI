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
    
    enum Buttons: String{
        case getStarted = "Get Started"
    }
    
    enum General: String{
        case emailHint = "emailHint"
        case passwordHint = "passwordHint"
    }
    
    enum Login: String{
        case welcomeBack = "welcomeBack"
        case createAccount = "createAccount"
        case termsAndConditions = "termsAndConditions"
    }
    
}


extension String{
    /// It localize any strings from Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey{
        return LocalizedStringKey(self)
    }
}
