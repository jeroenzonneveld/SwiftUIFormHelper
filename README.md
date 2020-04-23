# SwiftUIFormHelper
Helper functions for creating forms with SwiftUI

## Features

- Helper to create space for the keyboard when visible
- Helper to dismiss the keyboard when pressing on something different then a form field

### Space for keyboard

Simply add the helper function `.enableKeyboardOffset()` after the Form {}.

```swift
import SwiftUI 

Form {

}.enableKeyboardOffset()
```

### Dismiss keyboard on tap

Simply add the helper function `.hideKeyboardOnTap()` after the Form {}.

```swift
import SwiftUI 

Form {

}.hideKeyboardOnTap()
```
