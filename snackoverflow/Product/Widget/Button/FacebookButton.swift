//
//  FacebookButton.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

struct FacebookButtonView: View {
    
    var onTap: () -> Void
    
    
    var body: some View {
        Button(action: onTap,
               label: {
            HStack {
                Image(IconItems.Social.facebook.rawValue)
                Text(LocaleKeys.Auth.facebook.rawValue.locale())
                Spacer()
            }
            .tint(.white)
            .font(.title2)
            .padding(.all,PagePadding.All.normal.rawValue)
        })
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.deepSkyBlue)
        .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    FacebookButtonView {}
}
