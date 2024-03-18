//
//  GroupsViewController.swift
//  HW2
//
//  Created by Артем Сиренко on 3/18/24.
//

import Foundation
import UIKit

class GroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
        let groupsTableView = UITableView()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .white
            title = "Groups"
            groupsTableView.delegate = self
            groupsTableView.dataSource = self
            // настройка таблицы и добавление на экран
            groupsTableView.frame = view.bounds
            groupsTableView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
            view.addSubview(groupsTableView)
        }
        
            // кол-во разделов
        func numberOfSections(in tableView: UITableView) -> Int {
                1
            }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
            return 5
        }
        
        func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = CustomTableViewCell2()
            return cell
        }

    }

