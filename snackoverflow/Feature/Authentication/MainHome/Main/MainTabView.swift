//
//  MainTabView.swift
//  snackoverflow
//
//  Created by oguzhan on 12.05.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ForEach(HomeTabItem.tabItems){item in
                item.page.tabItem {
                    TabIconLabel(model: item.model)
                }
            }
        }.accentColor(.peach)
    }
}

#Preview {
    MainTabView()
}

private struct TabIconLabel: View {
    let model: TabModel
    var body: some View {
        VStack{
            Image(model.icon.rawValue)
            Text(model.title.rawValue.locale())
        }
    }
}
