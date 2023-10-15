//
//  RegisterationVC.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import UIKit

class RegisterationVC: UIViewController {

    @IBOutlet var textFieldBackground: [UIView]! {
        didSet{
            self.textFieldBackground.forEach { backView in
                backView.layer.cornerRadius = 25
                backView.layer.borderColor = UIColor(named: "buttonBackground")?.cgColor
                backView.layer.borderWidth = 1
            }
        }
    }
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfEmailId: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    @IBOutlet weak var btnRegister: UIButton!{
        didSet{
            self.btnRegister.layer.cornerRadius = 25
        }
    }
    private var registrationViewModel = RegistrationViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnRegisterDidTapped(_ sender: UIButton) {
        let request = RegistrationRequest(userName: tfUsername.text, userEmail: tfEmailId.text, password: tfPassword.text, confirmPassword: tfConfirmPassword.text)
        registrationViewModel.createUser(registartionRequest: request) { [weak self] in
            DispatchQueue.main.async{
                guard let self = self else { return }
                let homeVC = AppStoryboard.main.viewController(viewControllerClass: ProductListVC.self)
                homeVC.modalPresentationStyle = .fullScreen
                self.present(homeVC, animated: true)
            }
        } onFailure: { [weak self] error in
            DispatchQueue.main.async{
                guard let self = self else { return }
                self.showAlert(title: "Error!", message: error)
            }
        }
    }
    
    @IBAction func loginBtnDidTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
