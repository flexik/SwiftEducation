//
//  FriendsViewController.swift
//  Hometask2
//
//  Created by Артем Сиренко on 3/14/24.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let friendsTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Friends"
        friendsTableView.delegate = self
        friendsTableView.dataSource = self
        
        // настройка таблицы и добавление на экран
        friendsTableView.frame = view.bounds
        friendsTableView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        view.addSubview(friendsTableView)
    }
    
        // кол-во разделов
    func numberOfSections(in tableView: UITableView) -> Int {
            1
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return 5
    }
    
    func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CustomTableViewCell()
        return cell
    }

}
