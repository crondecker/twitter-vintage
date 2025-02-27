//
//  RegistrationViewController.swift
//  twitter-vintage
//
//  Created by cron on 2/11/25.
//

import UIKit

class RegistrationViewController: UIViewController {

    var emailImageView: UIImageView = {
        var view = UIImageView()
        view.image = UIImage(systemName: "envelope")
        view.contentMode = .scaleAspectFit
        view.tintColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var emailTextField: UITextField = {
        let view = UITextField()
        view.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 25).isActive = true
        return view
    }()
    
    var emailDividerView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 0.65).isActive = true
        return view
    }()
    
    var passwordImageView: UIImageView = {
        var view = UIImageView()
        view.image = UIImage(systemName: "envelope")
        view.contentMode = .scaleAspectFit
        view.tintColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var passwordTextField: UITextField = {
        let view = UITextField()
        view.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 25).isActive = true
        return view
    }()
    
    var passwordDividerView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 0.65).isActive = true
        return view
    }()
    
    var nameImageView: UIImageView = {
        var view = UIImageView()
        view.image = UIImage(systemName: "envelope")
        view.contentMode = .scaleAspectFit
        view.tintColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var nameTextField: UITextField = {
        let view = UITextField()
        view.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 25).isActive = true
        return view
    }()
    
    var nameDividerView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.tintColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 0.65).isActive = true
        return view
    }()
    
    var saveNewUserButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        view.layer.cornerRadius = 5
        view.backgroundColor = .twitterBlue
        return view
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        view.addTapAction(target: self, action: #selector(viewTapped))
    }
    
    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .default
        
        view.addSubview(nameImageView)
        view.addSubview(nameTextField)
        view.addSubview(nameDividerView)
        view.addSubview(passwordImageView)
        view.addSubview(passwordTextField)
        view.addSubview(passwordDividerView)
        view.addSubview(emailImageView)
        view.addSubview(emailTextField)
        view.addSubview(emailDividerView)

        
        
        nameImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        nameImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true

        nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: nameImageView.leadingAnchor, constant: 30).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        
        nameDividerView.topAnchor.constraint(equalTo: nameImageView.bottomAnchor, constant: 5).isActive = true
        nameDividerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        nameDividerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor , constant: -20).isActive = true
                
        passwordImageView.topAnchor.constraint(equalTo: nameDividerView.bottomAnchor, constant: 10).isActive = true
        passwordImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: nameDividerView.bottomAnchor, constant: 9).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: passwordImageView.leadingAnchor, constant: 30).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        
        passwordDividerView.topAnchor.constraint(equalTo: passwordImageView.bottomAnchor, constant: 5).isActive = true
        passwordDividerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        passwordDividerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor , constant: -20).isActive = true

        emailImageView.topAnchor.constraint(equalTo: passwordDividerView.bottomAnchor, constant: 10).isActive = true
        emailImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: passwordDividerView.bottomAnchor, constant: 9).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: emailImageView.leadingAnchor, constant: 30).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        
        emailDividerView.topAnchor.constraint(equalTo: emailImageView.bottomAnchor, constant: 5).isActive = true
        emailDividerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        emailDividerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor , constant: -20).isActive = true

        
        
    }
    
    @objc func viewTapped() {
        print("View foi clicada!")
        view.dismissKeyboardIfActive()
    }
}
