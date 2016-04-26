//
//  RegistrationValidator.swift
//  FluidValidator
//
//  Created by Antonio Di Giacomo on 26/04/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Foundation
import FluidValidator

class RegistrationValidator:AbstractValidator<UserRegistration> {
    internal override init() {
        super.init()
        
        self.addValidation("firstname") { (context) -> (AnyObject?) in
            context.firstname
        }.addRule(BeNotEmpty())
        
        self.addValidation("lastname") { (context) -> (AnyObject?) in
            context.lastname
        }.addRule(BeNotEmpty())
        
        self.addValidation("email") { (context) -> (AnyObject?) in
            context.email
        }.addRule(ValidEmail())
    }
}