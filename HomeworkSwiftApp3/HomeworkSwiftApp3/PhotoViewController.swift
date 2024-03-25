//
//  PhotoViewController.swift
//  HomeworkSwiftApp3
//
//  Created by Артем Сиренко on 3/23/24.
//

import Foundation
import UIKit

class PhotoViewController: UICollectionViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView.backgroundColor = .white
//        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//    }
//    
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        2
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        3
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
//        guard let cell = cell as? CustomCollectionViewCell else {
//            return UICollectionViewCell()
//        }
//        cell.tap = { [weak self] image in
//            self?.navigationController?.pushViewController(ImageViewController(image: image ), animated: true)
//        }
//        return cell
//    }
//}

    var accessToken: String?

    var userID: String?

   

    init(accessToken: String?, userID: String?) {

        self.accessToken = accessToken

        self.userID = userID

        super.init(nibName: nil, bundle: nil)

    }

   

    required init?(coder: NSCoder) {

        fatalError("init(coder:) has not been implemented")

    }

   

    override func viewDidLoad() {

        super.viewDidLoad()

       

        fetchPhotos()

    }

   

    func fetchPhotos() {

        guard let accessToken = accessToken, let userID = userID else {

            print("Access token or user ID is missing")

            return

        }

       

        let urlString = "https://api.vk.com/method/photos.get?owner_id=\(userID)&access_token=\(accessToken)&v=5.131"

       

        if let url = URL(string: urlString) {

            URLSession.shared.dataTask(with: url) { (data, response, error) in

                if let error = error {

                    print("Error fetching photos: \(error.localizedDescription)")

                    return

                }

               

                if let data = data {

                    do {

                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]

                        if let response = json?["response"] as? [String: Any], let items = response["items"] as? [[String: Any]] {

                            for item in items {

                                if let photoID = item["id"] as? Int, let photoURL = item["photo_604"] as? String {

                                    print("Photo ID: \(photoID), URL: \(photoURL)")

                                }

                            }

                        }

                    } catch {

                        print("Error parsing JSON: \(error.localizedDescription)")

                    }

                }

            }.resume()

        }

    }

}
