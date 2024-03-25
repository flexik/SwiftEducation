//
//  FriendsViewController.swift
//
//  Created by Артем Сиренко on 3/18/24.
//

import UIKit

final class FriendsViewController: UITableViewController {
    
    private let networkService = NetworkService()
    private var models: [Friend] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friends"
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .white
        tableView.register(FriendCell.self, forCellReuseIdentifier: "FriendCell")
        networkService.getFriends { [weak self] friends in
            self?.models = friends
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendCell else {
            return UITableViewCell()
        }
        let model = models[indexPath.row]
        cell.updateCell(model: model)
        return cell
    }
        
}
