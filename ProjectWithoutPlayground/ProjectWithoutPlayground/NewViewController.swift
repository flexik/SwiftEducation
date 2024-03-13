//
//  NewViewController.swift
//  ProjectWithoutPlayground
//
//  Created by Артем Сиренко on 3/12/24.
//

import Foundation
import UIKit

class NewViewController: UIViewController {
    
    private var label = UILabel()
    private var imageView: UIImageView = {
            let imageView = UIImageView(image: UIImage(systemName: "person"))
            imageView.frame = CGRect(x: 100, y: 400, width: 200, height: 200)
            imageView.backgroundColor = .yellow
            return imageView
        }()
    
    private var newView: UIView = {
        let newView = UIView(frame: CGRect(x: 50, y: 650, width: 300, height: 200))
        newView.backgroundColor = .red
        return newView
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
        newView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 200),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor .constraint(equalToConstant: 200),
            newView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            newView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            newView.widthAnchor.constraint(equalToConstant: 300),
            newView.heightAnchor .constraint(equalToConstant: 200)
        ])
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .orange
//        
//        setLabel()
//        view.addSubview(label)
        setLabel()
        view.addSubview(imageView)
        view.addSubview(newView)
        setupConstraints()
    }
    
}
