//
//  FishingError.swift
//  LoginExample
//
//  Created by User-UAM on 11/9/24.
//

import UIKit

enum FishingError: LocalizedError {
    case badLogin
    case infoEmpty
    
    var errorDescription: String? {
        switch self {
        case .badLogin:
            return "El usuario o contraseña no coinciden"
        case .infoEmpty:
            return "No ha colocado ninguna información en el texto"
        }
    }
    
    var failureReason: String? {
        switch self {
        case .badLogin:
            return "La cotraseña o el usuario deben estar mal escritos, por favor vuelvalo a intentar."
            
        case .infoEmpty:
            return "Las barras de texto estan vacias."
        }
    }
    
}
