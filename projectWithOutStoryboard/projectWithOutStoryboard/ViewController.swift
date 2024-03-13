//
//  ViewController.swift
//  projectWithOutStoryboard
//
//  Created by Артем Сиренко on 3/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var label = UILabel()
    
    func setLabel(){
        label.text = "Label"
        label.backgroundColor = .green
        label.textAlignment = .center
        view.addSubview(label)
    }
    
    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Авторизация", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 3
        return button
    }()
    
    private var login: UITextField = {
        let login = UITextField()
        login.text = "Логин"
        login.textColor = .black
        login.backgroundColor = .white
        login.textAlignment = .center
        return login
    }()
    
    private var password: UITextField = {
        let password = UITextField()
        password.text = "Пароль"
        password.textColor = .black
        password.backgroundColor = .white
        password.textAlignment = .center
        return password
    }()
    
    private var enterButton: UIButton = {
        let enterButton = UIButton()
        enterButton.backgroundColor = .yellow
        enterButton.setTitle("Войти", for: .normal)
        enterButton.setTitleColor(UIColor.black, for: .normal)
        enterButton.layer.cornerRadius = 3
        return enterButton
    }()
    
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        login.translatesAutoresizingMaskIntoConstraints = false
        password.translatesAutoresizingMaskIntoConstraints = false
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            label.widthAnchor.constraint(equalToConstant: 217),
            label.heightAnchor.constraint(equalToConstant: 151),
        ])
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: label.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 295),
            button.heightAnchor.constraint(equalToConstant: 36),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 36)
        ])
        
        NSLayoutConstraint.activate([
            login.centerXAnchor.constraint(equalTo: button.centerXAnchor),
            login.widthAnchor.constraint(equalToConstant: 177),
            login.heightAnchor.constraint(equalToConstant: 34),
            login.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 36)
        ])
        
        NSLayoutConstraint.activate([
            password.centerXAnchor.constraint(equalTo: login.centerXAnchor),
            password.widthAnchor.constraint(equalToConstant: 177),
            password.heightAnchor.constraint(equalToConstant: 34),
            password.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 12)
        ])
        
        NSLayoutConstraint.activate([
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 248),
            enterButton.heightAnchor.constraint(equalToConstant: 36),
            enterButton.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 25)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .purple
        setLabel()
        view.addSubview(button)
        view.addSubview(login)
        view.addSubview(password)
        view.addSubview(enterButton)
        setupConstraints()
    }

}



