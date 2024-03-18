//
//  MainTabBarController.swift
//  HW2
//
//  Created by Артем Сиренко on 3/18/24.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTabBar()
    }
        
    // функция создания "внешности" таббара
    func setupTabBar() {
        
        let friendsViewController = createNavController(vc: FriendsViewController(), itemName: "Friends", itemImage: "person.crop.circle")
        let groupsViewController = createNavController(vc: GroupsViewController(), itemName: "Groups", itemImage: "person.3.fill")
        let photoViewController = createNavController(vc: PhotoViewController(collectionViewLayout: UICollectionViewFlowLayout()),   itemName: "Photos", itemImage: "photo.on.rectangle")
        
        viewControllers = [friendsViewController, groupsViewController, photoViewController]
        
    }


    // функция создания NavigationComtroller для управления TabBar
    func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10) // опускаем title у item
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        return navController
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController){
    }

}
