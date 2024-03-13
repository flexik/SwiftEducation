//
//  ViewController.swift
//  ProjectWithoutPlayground
//
//  Created by Артем Сиренко on 3/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var label = UILabel()
    private var imageView: UIImageView = {
            let imageView = UIImageView(image: UIImage(systemName: "person"))
            imageView.frame = CGRect(x: 100, y: 400, width: 200, height: 200)
            imageView.backgroundColor = .yellow
            return imageView
        }()
    
//    private var newView: UIView = {
//        let newView = UIView(frame: CGRect(x: 50, y: 650, width: 300, height: 200))
//        newView.backgroundColor = .red
//        return newView
//    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Tap", for: .normal)
        return button
    }()
    
    func setLabel(){
        label.text = "Hello"
        label.backgroundColor = .green
        label.textAlignment = .center
        view.addSubview(label)
    }
    
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 200),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor .constraint(equalToConstant: 200),
//            newView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            newView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
//            newView.widthAnchor.constraint(equalToConstant: 300),
//            newView.heightAnchor .constraint(equalToConstant: 200)
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            button.widthAnchor.constraint(equalToConstant: 300),
            button.heightAnchor .constraint(equalToConstant: 200)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        setLabel()
        view.addSubview(imageView)
        view.addSubview(button)
        setupConstraints()
    }
    
    func presentController() {
        let newViewController = NewViewController()
        present(newViewController, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        presentController()
    }

}

