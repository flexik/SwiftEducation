//
//  GroupsViewController.swift
//  HW2
//
//  Created by Артем Сиренко on 3/18/24.
//

import Foundation
import UIKit

class GroupsViewController: UITableViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .white
            title = "Groups"
            view.addSubview(UITableView())
        }
        
    // кол-во разделов
    override func numberOfSections(in tableView: UITableView) -> Int {
                1
            }
        
    // кол-во строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
            return 5
        }
        
    // ячейка в строке
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = CustomTableViewCell2()
            return cell
        }

    }

