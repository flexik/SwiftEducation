//
//  PhotoViewController.swift
//  Hometask2
//
//  Created by Артем Сиренко on 3/14/24.
//

import UIKit

class PhotoViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
//    let photoTableView = UICollectionView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        
//        view.backgroundColor = .white
//        title = "Photos"
////        photoTableView.delegate = self
////        photoTableView.dataSource = self
//        
//        // настройка таблицы и добавление на экран
//        photoTableView.frame = view.bounds
//        photoTableView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
//        view.addSubview(photoTableView)
//    }
//    
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 6
//    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return CustomCollectionViewCell()
//    }
//
// ------------------------------------
    
    private var imageView = UIImageView()
   
    init(image: UIImage) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Photos"
        setupViews()
    }
   
    private func setupViews() {
        view.addSubview(imageView)
        setupConstraints()
    }
   
    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
       
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/2),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView!) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell",for: indexPath)
        
        return cell
    }
    

}
