//
//  friendsViewController.swift
//  HW2
//
//  Created by Артем Сиренко on 3/18/24.
//

import Foundation
import UIKit


class FriendsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Friends"
        view.addSubview(UITableView())
    }
    
        // кол-во разделов
    override func numberOfSections(in tableView: UITableView) -> Int {
            1
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return 5
    }
    
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CustomTableViewCell()
        return cell
    }

}
