//
//  TabbarViewController.swift
//  Sportify12
//
//  Created by Apple on 20/02/2023.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
           let vc1 = HomeViewController()
           let vc2 = SearchViewController()
           let vc3 = LibraryViewController()
        vc1.navigationItem.largeTitleDisplayMode  = .always
        vc2.navigationItem.largeTitleDisplayMode  = .always
        vc3 .navigationItem.largeTitleDisplayMode  = .always
        
        ///Note: setting the Navigationbar items
        vc1.title = "Browse"
        vc2.title = "Search"
        vc3.title = "Library"
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        
        ///Note: setting the tabar items
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "search", image: UIImage(systemName: "magnifyingglass"), tag:2)
        nav3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "list.bullet.rectangle"), tag: 3)
        
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1,nav2,nav3], animated: false)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
