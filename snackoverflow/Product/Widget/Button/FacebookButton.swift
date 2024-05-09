//
//  FacebookButton.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

private enum StringItems: String{
    case facebookLogin = "Sign In with Facebook"
}

struct FacebookButtonView: View {
    
    var onTap: () -> Void
    
    
    var body: some View {
        Button(action: onTap,
               label: {
                HStack {
                    Image(IconItems.Social.facebook.rawValue)
                    Text(StringItems.facebookLogin.rawValue)
                    Spacer()
                }
                .tint(.white)
                .background(Color.deepSkyBlueColor)
            })  .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
    }
}
