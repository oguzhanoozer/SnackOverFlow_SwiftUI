//
//  GoogleButton.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

struct GoogleButtonView: View {
    var onTap: () -> Void

    var body: some View {
        Button(action: onTap,
               label: {
                   HStack {
                       Image(IconItems.Social.google.rawValue)
                       Text(LocaleKeys.Auth.google.rawValue.locale())
                       Spacer()
                   }
                   .tint(.black)
                   .font(.title2)
                   .padding(.all, PagePadding.All.normal.rawValue)
               })
               .buttonBorderShape(.roundedRectangle)
               .controlSize(.large)
               .background(.white)
               .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    GoogleButtonView {}
}
