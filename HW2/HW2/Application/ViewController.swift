//
//  ViewController.swift
//  HW2
//
//  Created by Артем Сиренко on 3/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    // создание логотипа
    private var label = UIImageView()
    func setLabel(){
        label.image = UIImage(named: "Swift_logo")
        view.addSubview(label)
    }
    
    // создание лейбла авторизации
    private var authorizeLabel: UILabel = {
        let authorizeLabel = UILabel()
        authorizeLabel.backgroundColor = .green
        authorizeLabel.text = "Авторизация"
        authorizeLabel.textAlignment = .center
        authorizeLabel.textColor = .black
        authorizeLabel.layer.cornerRadius = 3
        return authorizeLabel
    }()
    
    // создание поля ввода логин
    private var login: UITextField = {
        let login = UITextField()
        login.borderStyle = .line
        login.layer.borderWidth = 1
        login.layer.borderColor = UIColor.black.cgColor
        login.textColor = .black
        login.backgroundColor = .white
        login.textAlignment = .center
        login.attributedPlaceholder = NSAttributedString(string: "Логин", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return login
    }()
    
    // создание поля ввода пароль
    private var password: UITextField = {
        let password = UITextField()
        password.borderStyle = .line
        password.layer.borderWidth = 1
        password.layer.borderColor = UIColor.black.cgColor
        password.textColor = .black
        password.backgroundColor = .white
        password.textAlignment = .center
        password.attributedPlaceholder = NSAttributedString(string: "Пароль", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return password
    }()
    
    // создание кнопки входа
    private var enterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .yellow
        button.setTitle("Enter", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 3
        return button
    }()
    
    private var isTap = false
    
    // функция установки расположения элементов
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        authorizeLabel.translatesAutoresizingMaskIntoConstraints = false
        login.translatesAutoresizingMaskIntoConstraints = false
        password.translatesAutoresizingMaskIntoConstraints = false
        enterButton.translatesAutoresizingMaskIntoConstraints = false
 
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            label.widthAnchor.constraint(equalToConstant: 217),
            label.heightAnchor.constraint(equalToConstant: 100),
        ])
        
        NSLayoutConstraint.activate([
            authorizeLabel.centerXAnchor.constraint(equalTo: label.centerXAnchor),
            authorizeLabel.widthAnchor.constraint(equalToConstant: 295),
            authorizeLabel.heightAnchor.constraint(equalToConstant: 36),
            authorizeLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 36)
        ])
        
        NSLayoutConstraint.activate([
            login.centerXAnchor.constraint(equalTo: authorizeLabel.centerXAnchor),
            login.widthAnchor.constraint(equalToConstant: 177),
            login.heightAnchor.constraint(equalToConstant: 34),
            login.topAnchor.constraint(equalTo: authorizeLabel.bottomAnchor, constant: 36)
        ])
        
        NSLayoutConstraint.activate([
            password.centerXAnchor.constraint(equalTo: login.centerXAnchor),
            password.widthAnchor.constraint(equalToConstant: 177),
            password.heightAnchor.constraint(equalToConstant: 34),
            password.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 12)
        ])
        
        NSLayoutConstraint.activate([
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 248),
            enterButton.heightAnchor.constraint(equalToConstant: 36),
            enterButton.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 25)
        ])
    }
    
    // функция установки сабвью во вью
    private func setupViews() {
        view.addSubview(authorizeLabel)
        view.addSubview(login)
        view.addSubview(password)
        view.addSubview(enterButton)
        setLabel()
        setupConstraints()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        // функция перехода на новый экран UITabBarController по нажатию на кнопку "Войти"
        enterButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
        setupViews()
    }
}

// расширение для класса с целью вынести методы отдельно от свойств
private extension ViewController {

    // функция перехода на ТабБарКонтроллер при нажатой кнопке
    @objc func tap() {
        navigationController?.pushViewController(MainTabBarController(), animated: true)
    }
}

