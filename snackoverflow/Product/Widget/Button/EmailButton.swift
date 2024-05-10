//
//  EmailButton.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import SwiftUI

struct EmailButtonView: View {
    var onTap: () -> Void

    var body: some View {
        Button(action: onTap,
               label: {
                   HStack {
                       Spacer()
                       Text(LocaleKeys.Auth.custom.rawValue.locale())
                       Spacer()
                   }
                   .tint(.peach)
                   .font(.system(size: FontSizes.headline, weight: .semibold))
                   .padding(.all, PagePadding.All.normal.rawValue)
               })
               .buttonBorderShape(.roundedRectangle)
               .controlSize(.large)
               .background(.white)
               .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    EmailButtonView {}
}
