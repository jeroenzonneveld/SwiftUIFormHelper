//
//  KeyboardDismissModifier.swift
//
//  Created by Jeroen Zonneveld on 23/04/2020.
//  Copyright © 2020 Jeroen Zonneveld. All rights reserved.
//

import SwiftUI

@available(iOS 13, *)
public struct KeyboardDismissModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        content.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

@available(iOS 13, *)
extension TextField {
    /// Dismiss the keyboard when pressing on something different then a form field
    /// - Returns: KeyboardDismissModifier
    public func hideKeyboardOnTap() -> ModifiedContent<Self, KeyboardDismissModifier> {
        return modifier(KeyboardDismissModifier())
    }
}
