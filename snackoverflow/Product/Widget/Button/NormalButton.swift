//
//  NormalButton.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import SwiftUI

struct NormalButtonView: View {
    var onTap: () -> Void
    var title: String
    
    var body: some View {
        Button(action: onTap,
               label: {
            HStack {
                Spacer()
                Text(title.locale())
                Spacer()
            }
            .tint(.white)
            .font(.system(size: FontSizes.headline, weight: .semibold))
            .padding(.all, PagePadding.All.normal.rawValue)
        })
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(.peach)
        .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    NormalButtonView(onTap: {}, title: "Sample")
}
