# SwiftUIFormHelper
Helper functions for creating forms with SwiftUI

## Installation

### Swift Package Manager
Once you have your Swift package set up, adding SwiftUIFormHelper as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/jeroenzonneveld/SwiftUIFormHelper", .upToNextMajor(from: "1.2.0"))
]
```

## Features

- Helper to create some offset for the keyboard when visible
- Helper to dismiss the keyboard when pressing on something different then a form field
- FormValidator to validate input

### Create offset for keyboard

Simply add the helper function `.enableKeyboardOffset()` after a Form.

```swift
import SwiftUI 
import SwiftUIFormHelper

Form {

}.enableKeyboardOffset()
```

### Dismiss keyboard on tap

Simply add the helper function `.hideKeyboardOnTap()` after a Textfield.

```swift
import SwiftUI 
import SwiftUIFormHelper

Form {
    TextField("Name", text: $name)
        .hideKeyboardOnTap()
}
```

### Form Validator

Validate input from fields. Currenlty supported:
- email
- phoneNumber

```swift
import SwiftUIFormHelper

let email = "fake@mailinator.com"
FormValidator.isValid(email: email)

let phoneNumber = "+31612345678"
FormValidator.isValid(phoneNumber: phoneNumber)
```
