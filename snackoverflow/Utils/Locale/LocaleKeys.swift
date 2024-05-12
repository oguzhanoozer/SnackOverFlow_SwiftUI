//
//  LocaleKeys.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

enum LocaleKeys {
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case custom = "signUpWithEmail"
    }

    enum Buttons: String {
        case getStarted
    }

    enum General: String {
        case emailHint
        case passwordHint
    }

    enum Login: String {
        case welcomeBack
        case createAccount
        case terms = "termsAndConditions"
    }
    
    enum TabView: String{
        case home = "tabHome"
        case market = "tabMarket"
        case create = "tabCreate"
        case wishlist = "tabWishlist"
        case account = "tabAccount"
    }
}

extension String {
    /// It localize any strings from Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
