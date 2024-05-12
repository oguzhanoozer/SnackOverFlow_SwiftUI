//
//  ViewStatusHiddenModifier.swift
//  snackoverflow
//
//  Created by oguzhan on 12.05.2024.
//

import Foundation
import SwiftUI

struct ViewStatusHiddenModifier: ViewModifier{
    @ViewBuilder
    func body(content: Content) -> some View{
        content.statusBar(hidden: true)
        //        if #available(iOS 16.0, *)
//        {
//            content.toolbar(.hidden, for: .automatic)
//        }else{
//            content.navigationBarHidden(true)
//        }
    }
}
