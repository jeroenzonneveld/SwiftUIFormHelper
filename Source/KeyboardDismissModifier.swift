//
//  KeyboardDismissModifier.swift
//
//  Created by Jeroen Zonneveld on 23/04/2020.
//  Copyright © 2020 Jeroen Zonneveld. All rights reserved.
//

import SwiftUI

struct KeyboardDismissModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

extension View {
    /// Dismiss the keyboard when pressing on something different then a form field
    /// - Returns: KeyboardDismissModifier
    public func hideKeyboardOnTap() -> ModifiedContent<Self, KeyboardDismissModifier> {
        return modifier(KeyboardDismissModifier())
    }
}
