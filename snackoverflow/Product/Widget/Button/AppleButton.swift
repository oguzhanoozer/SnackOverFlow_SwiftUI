//
//  AppleButton.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//


import Foundation
import SwiftUI

struct AppleButtonView: View {
    
    var onTap: () -> Void
    
    var body: some View {
        Button(action: onTap,
               label: {
                HStack {
                    Image(IconItems.Social.apple.rawValue)
                    Text(LocaleKeys.Auth.apple.rawValue.locale())
                    Spacer()
                }
                .tint(.white)
                .font(.title2)
                .padding(.all,PagePadding.All.normal.rawValue)
            })
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(.black)
            .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    AppleButtonView {}
}

