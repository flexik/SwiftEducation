//
//  CustomCollectionViewCell.swift
//  Hometask2
//
//  Created by Артем Сиренко on 3/16/24.
//

import UIKit

// кастомная ячейка
final class CustomCollectionViewCell: UICollectionViewCell {
    
//    var tap: ((UIImage) -> Void)?
//    
//    private var imageView = UIImageView(/*image:UIImage(named: "Swift_logo")*/)
//   
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//        let recognizer = UITapGestureRecognizer(target: self, action: #selector(cellTap))
//        addGestureRecognizer(recognizer)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    // добавляем круг и текст на экран и устанавливаем ограничения
//    private func setupViews() {
//        addSubview(imageView)
//        setupConstraints()
//    }
//    
//    private func setupConstraints() {
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
//            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            imageView.heightAnchor.constraint(equalToConstant: 10),
//            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor)
//        ])
//    }
//    
//    @objc func cellTap() {
//        tap?(imageView.image ?? UIImage())
//    }
    
    // ----------------
    
    var tap: ((UIImage) -> Void)?
        private var imageView = UIImageView(image: UIImage(systemName: "person"))
       
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(cellTap))
            addGestureRecognizer(recognizer)
        }
       
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
       
        private func setupViews() {
            addSubview(imageView)
            setupConstraints()
        }
       
        private func setupConstraints() {
            imageView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: topAnchor),
                imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
                imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }
       
        @objc func cellTap() {
            tap?(imageView.image ?? UIImage())
        }
}
