//
//  FriendsViewController.swift
//  HomeworkSwiftApp3
//
//  Created by Артем Сиренко on 3/23/24.
//

import Foundation
import UIKit
import WebKit

 
class FriendsViewController: UIViewController {
//    
//    let userID: String
//    let accessToken: String
//    
//    init(userID: String?, accessToken: String?) {
//        self.userID = userID ?? ""
//        self.accessToken = accessToken ?? ""
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        guard let url = URL(string: "https://api.vk.com/method/friends.get?user_id=\(userID)&access_token=\(accessToken)&v=5.131") else {
//            return
//        }
//        
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                print("Error fetching friends list: \(error.localizedDescription)")
//                return
//            }
//            
//            if let data = data {
//                do {
//                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
//                       let response = json["response"] as? [String: Any],
//                       let items = response["items"] as? [[String: Any]] {
//                        for item in items {
//                            if let friendID = item["id"] as? Int, let friendName = item["first_name"] as? String {
//                                print("Friend ID: \(friendID), Name: \(friendName)")
//                            }
//                        }
//                    }
//                } catch {
//                    print("Error parsing JSON: \(error.localizedDescription)")
//                }
//            }
//        }.resume()
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

       

        // Выполнение запроса к API VK для получения списка друзей

        fetchFriendsList()

    }

 

  func fetchFriendsList() {

        guard let accessToken = accessToken, let userID = userID else {

            print("Access token or user ID is missing")

            return

        }

       

        let urlString = "https://api.vk.com/method/friends.get?user_id=\(userID)&access_token=\(accessToken)&v=5.131"

       

        if let url = URL(string: urlString) {

            URLSession.shared.dataTask(with: url) { (data, response, error) in

                if let error = error {

                    print("Error fetching friends list: \(error.localizedDescription)")

                    return

                }

               

                if let data = data {

                    do {

                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]

                        if let response = json?["response"] as? [String: Any], let items = response["items"] as? [[String: Any]] {

                            for item in items {

                                if let friendID = item["id"] as? Int, let friendName = item["first_name"] as? String {

                                    print("Friend ID: \(friendID), Name: \(friendName)")

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

