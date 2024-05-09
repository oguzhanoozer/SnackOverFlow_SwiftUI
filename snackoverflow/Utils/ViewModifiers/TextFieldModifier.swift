//
//  TextfieldModifier.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        return 
            content.padding()
            .overlay(RoundedRectangle(cornerRadius: 10.0)
            .stroke(lineWidth: 2))
            .foregroundColor(.carl)
    }
}
