//
//  GroupsViewController.swift
//  HomeworkSwiftApp3
//
//  Created by Артем Сиренко on 3/23/24.
//

import Foundation
import UIKit

class GroupsViewController: UITableViewController {

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

       

        fetchGroupsList()

    }

   

    func fetchGroupsList() {

        guard let accessToken = accessToken, let userID = userID else {

            print("Access token or user ID is missing")

            return

        }

       

        let urlString = "https://api.vk.com/method/groups.get?user_id=\(userID)&access_token=\(accessToken)&v=5.131"

       

        if let url = URL(string: urlString) {

            URLSession.shared.dataTask(with: url) { (data, response, error) in

                if let error = error {

                    print("Error fetching groups list: \(error.localizedDescription)")

                    return

                }

               

                if let data = data {

                    do {

                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]

                        if let response = json?["response"] as? [String: Any], let items = response["items"] as? [[String: Any]] {

                            for item in items {

                                if let groupID = item["id"] as? Int, let groupName = item["name"] as? String {

                                    print("Group ID: \(groupID), Name: \(groupName)")

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
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            
//            view.backgroundColor = .white
//            title = "Groups"
//            view.addSubview(UITableView())
//        }
//        
//    // кол-во разделов
//    override func numberOfSections(in tableView: UITableView) -> Int {
//                1
//            }
//        
//    // кол-во строк
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
//            return 5
//        }
//        
//    // ячейка в строке
//    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = CustomTableViewCell2()
//            return cell
//        }
//
//    }
//
