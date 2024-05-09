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
           VStack {
               Image(Icons.appLogo.rawValue)
               FacebookButtonView(onTap: {}).padding(Edge.Set.top,40)
           }.padding(.paddingAll)
       }
   }
}

#Preview {
   WelcomeView().statusBar(hidden: true)
}

