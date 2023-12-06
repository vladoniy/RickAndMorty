//
//  RMTabBarController.swift
//  RickAndMortyTestovoe
//
//  Created by Владислав Сидорин on 05.12.2023.
//

import UIKit

class RMTabBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
//        tabBar.isTranslucent = false
    }

    
    func setUpTabs() {
        let episodeVC = RMEpisodesViewController()
        let favepisodesVC = RMFavouritesViewController()
        
        let nav1 = UINavigationController(rootViewController: episodeVC)
        let nav2 = UINavigationController(rootViewController: favepisodesVC)
        
        nav1.tabBarItem = UITabBarItem(title: nil, image:  UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "heart"), tag: 2)
        
        nav2.navigationItem.title = "Favourite Episodes"
        
        setViewControllers([nav1, nav2], animated: true)
        
    }
}
