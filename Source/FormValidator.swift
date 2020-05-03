//
//  FormValidator.swift
//
//  Created by Jeroen Zonneveld on 03/05/2020.
//  Copyright © 2020 Jeroen Zonneveld. All rights reserved.
//

import Foundation

public class FormValidator {
    public static func isNotEmpty(_ text: String) -> Bool {
        return text != ""
    }
    
    public static func isEmpty(_ text: String) -> Bool {
        return text == ""
    }
    
    public static func hasMinimium(characters: Int, text: String) -> Bool {
        return text.count >= characters
    }
    
    public static func isValid(email: String) -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", regex)
        
        return emailPredicate.evaluate(with: email)
    }
    
    public static func isValid(phoneNumber: String) -> Bool {
        let regex = "^[0-9+]{0,1}+[0-9]{5,16}$"
        let phonePredicate = NSPredicate(format: "SELF MATCHES %@", regex)
        
        return phonePredicate.evaluate(with: phoneNumber)
    }
}
