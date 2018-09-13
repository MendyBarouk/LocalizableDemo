//
//  Localizable.swift
//  LocalizableDemo
//
//  Created by Menahem Barouk on 13/09/2018.
//

import Foundation

protocol Localizable
{
    var key              : String { get }
    var comment          : String { get }
    var parameters       : [CVarArg] { get }
    var localizableString: String { get }
}

extension Localizable
{
    var localizableString: String
    {
        return String(format: NSLocalizedString(key, comment: comment), arguments: parameters)
    }
    
    var comment: String
    {
        return String()
    }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String
{
    var localizableString: String
    {
        return NSLocalizedString(key, comment: comment)
    }
    
    var parameters: [CVarArg]
    {
        return []
    }
    
    var key: String
    {
        return rawValue
    }
}
