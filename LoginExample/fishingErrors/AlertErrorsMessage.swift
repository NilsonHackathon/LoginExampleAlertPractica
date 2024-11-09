//
//  AlertErrosMessage.swift
//  LoginExample
//
//  Created by User-UAM on 11/9/24.
//

import UIKit

final class AlertErrorsMessage {
    static func showAlert(error: Error, in viewController: UIViewController){
        let alert = UIAlertController(
            title: (error as? LocalizedError)?.errorDescription ?? "Ocurrio un error",
            message: (error as? LocalizedError)?.failureReason ?? "Intentalo luego",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        viewController.present(alert, animated: true)
    }
}
