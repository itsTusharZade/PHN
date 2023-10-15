//
//  LoginVC.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import UIKit

class LoginVC: UIViewController {
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
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!{
        didSet{
            self.btnLogin.layer.cornerRadius = 25
        }
    }
    
    private var loginViewModel = LoginViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnCreateAccountDidTapped(_ sender: UIButton) {
        let registerVC = AppStoryboard.main.viewController(viewControllerClass: RegisterationVC.self)
        registerVC.modalPresentationStyle = .fullScreen
        self.present(registerVC, animated: true)
    }
    
    @IBAction func btnLoginDidTapped(_ sender: UIButton) {
        let loginRequest = LoginRequest(userEmail: tfUsername.text, userPassword: tfPassword.text)
        loginViewModel.loginUser(loginRequest: loginRequest) {[weak self] userInfo in
            DispatchQueue.main.async {
                guard let self = self else { return }
                self.loginViewModel.saveUserData(userInfo)
                let productVC = AppStoryboard.main.viewController(viewControllerClass: ProductListVC.self)
                productVC.modalPresentationStyle = .fullScreen
                self.present(productVC, animated: true)
            }
        } onFailure: {[weak self] error in
            DispatchQueue.main.async {
                guard let self = self else { return }
                self.showAlert(title: "", message: error)
            }
        }
    }
    
}
