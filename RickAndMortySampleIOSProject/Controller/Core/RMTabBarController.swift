//
//  ViewController.swift
//  RickAndMortySampleIOSProject
//
//  Created by Dayo Adekoya on 31/10/2023.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBars()
    }
    
    func setUpTabBars(){
        let characterViewController = RMCharacterController()
        let locationViewController = RMLocationController()
        let episodeViewController = RMEpisodeController()
        let settingsViewController = RMSettingsController()
        
        let characterNav = UINavigationController(rootViewController: characterViewController)
        let locationNav = UINavigationController(rootViewController: locationViewController)
        let episodeNav = UINavigationController(rootViewController: episodeViewController)
        let settingsNav = UINavigationController(rootViewController: settingsViewController)
        
        characterNav.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        locationNav.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        episodeNav.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        settingsNav.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in[characterNav, locationNav, episodeNav, settingsNav] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([characterNav, locationNav, episodeNav, settingsNav], animated: true)
    }


}

