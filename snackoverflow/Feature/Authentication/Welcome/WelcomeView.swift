//
//  WelcomeView.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import SwiftUI


struct WelcomeView: View {
   var body: some View {
       ZStack {
           Image(Images.juice.rawValue).resizable()
           Color.black.opacity(0.35)
           BodyView()
       }
   }
}

#Preview {
//   WelcomeView().statusBar(hidden: true)
    WelcomeView().ignoresSafeArea(.all)
}


private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image(Icons.appLogo.rawValue)
                Spacer()
                FacebookButtonView(onTap: {}).padding(Edge.Set.top,40)
                GoogleButtonView(onTap: {})
                AppleButtonView(onTap: {})
                Divider().background(Color.peach)
                    .frame(width: geometry.dw(width: 0.6),height: DividerViewSize.normal).padding(.all,PagePadding.Horizontal.normal.rawValue)
                EmailButtonView(onTap: {})
                Spacer().frame(height: geometry.dh(height: 0.1))
            }.padding(.paddingAll)
        }
    }
}

