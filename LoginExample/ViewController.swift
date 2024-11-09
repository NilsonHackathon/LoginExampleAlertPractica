import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userTextFiel: UITextField!
    @IBOutlet var passwordTextFiel: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var loginValidationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.addTarget(self, action: #selector(naviagteToMainView), for: .touchUpInside)
        registerButton.addTarget(self, action: #selector(naviagteToRegisterView), for: .touchUpInside)
        setValidationLabel()
    }
    
    
    @objc func naviagteToMainView(sender: UIButton!) {
        guard let username = userTextFiel.text, !username.isEmpty,
              let password = passwordTextFiel.text, !password.isEmpty else {
            AlertErrorsMessage.showAlert(error: FishingError.infoEmpty, in: self)
            return
        }
        
        if username == "Admin" && password == "Admin123" {
            let mainViewController = MainViewController()
            self.navigationController?.pushViewController(mainViewController, animated: true)
            setValidationLabel()
        } else {
            AlertErrorsMessage.showAlert(error: FishingError.badLogin, in: self)
        }
    }
    
    @objc func naviagteToRegisterView(sender: UIButton!) {
        let registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerViewController, animated:true)
    }
    
    func setValidationLabel(){
        loginValidationLabel.text = ""
        loginValidationLabel.textColor = .black
    }
    
    func setBadValidationLabel(){
        loginValidationLabel.text = "Error de Autenticacion"
        loginValidationLabel.textColor = .red
    }
}

