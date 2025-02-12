//
//  LoginViewController.swift
//  twitter-vintage
//
//  Created by cron on 2/11/25.
//

import UIKit

class LoginViewController: UIViewController {

    let logoImageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "TwitterLogo"))
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let emailContainerView: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        let iv = UIImageView()
        iv.image = UIImage(named: String(stringLiteral: "mail"))
        iv.setDimensions(width: 24, height: 24)
        iv.tintColor = .white
        view.addSubview(iv)
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        iv.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        return view
    }()
    
    let emailTextView: UITextField = {
        let tv = UITextField()
        tv.placeholder = "Email"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = .white
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.heightAnchor.constraint(equalToConstant: 25).isActive = true
        return tv
    }()
    
    let emailDivider: UIView = {
       let dv = UIView()
        dv.backgroundColor = .white
        dv.tintColor = .white
        dv.translatesAutoresizingMaskIntoConstraints = false
        dv.heightAnchor.constraint(equalToConstant: 0.65).isActive = true
        return dv
    }()
    
    let passwordContainerView: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        let iv = UIImageView()
        iv.image = UIImage(named: String(stringLiteral: "lock"))
        iv.setDimensions(width: 24, height: 24)
        iv.tintColor = .white
        view.addSubview(iv)
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        iv.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        return view
    }()
    
    let passwordTextView: UITextField = {
        let tv = UITextField()
        tv.placeholder = "Password"
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.textColor = .white
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.heightAnchor.constraint(equalToConstant: 25).isActive = true
        tv.isSecureTextEntry = true
        return tv
    }()
    
    let passwordDivider: UIView = {
       let dv = UIView()
        dv.backgroundColor = .white
        dv.tintColor = .white
        dv.translatesAutoresizingMaskIntoConstraints = false
        dv.heightAnchor.constraint(equalToConstant: 0.65).isActive = true
        return dv
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.twitterBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = .white
        
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.addTarget(self, action: #selector(handleShowSignUp(_:)), for: .touchUpInside)
        return button
    }()
    
    
    
    let newAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Don't have an account? Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        //button.backgroundColor = .red
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        view.addTapAction(target: self, action: #selector(viewTapped))

    }
    
    @objc func handleShowSignUp() {
        let controller = RegistrationViewController()
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .default
        
        view.addSubview(logoImageView)

        
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        

        view.addSubview(newAccountButton)
        newAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true
        newAccountButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        newAccountButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
        newAccountButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        

        logoImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true

        view.addSubview(emailContainerView)
        emailContainerView.addSubview(emailTextView)
        view.addSubview(emailDivider)
        
        view.addSubview(passwordContainerView)
        passwordContainerView.addSubview(passwordTextView)
        view.addSubview(passwordDivider)
        view.addSubview(loginButton)
        
        
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        emailContainerView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor,constant: 10).isActive = true
        emailContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        emailContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        //emailContainerView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        emailTextView.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor, constant: 30).isActive = true
        emailTextView.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor, constant: 5).isActive = true
        
        emailDivider.topAnchor.constraint(equalTo: emailContainerView.bottomAnchor,constant: 5).isActive = true
        emailDivider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        emailDivider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        
        passwordContainerView.topAnchor.constraint(equalTo: emailDivider.bottomAnchor,constant: 20).isActive = true
        passwordContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        passwordContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        //emailContainerView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        passwordTextView.leadingAnchor.constraint(equalTo: passwordContainerView.leadingAnchor, constant: 30).isActive = true
        passwordTextView.trailingAnchor.constraint(equalTo: passwordContainerView.trailingAnchor, constant: 5).isActive = true
        
        passwordDivider.topAnchor.constraint(equalTo: passwordContainerView.bottomAnchor,constant: 5).isActive = true
        passwordDivider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        passwordDivider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordDivider.bottomAnchor, constant: 50).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
/*
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, emailDivider, passwordContainerView, passwordDivider, loginButton])
        stack.axis = .vertical
        stack.spacing = 20
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingLeft: 32, paddingRight: 32)
*/
        
    }

    
    @objc func viewTapped() {
        print("View foi clicada!")
        view.dismissKeyboardIfActive()
    }
}
