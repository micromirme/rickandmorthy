//
//  ViewController.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 28.12.2022.
//

import UIKit

final class RMTabViewController: UITabBarController {
    
    enum TabType: CaseIterable {
        case characters, locations, episodes, settings
        
        func getNavigationController() -> UINavigationController {
            let navigationVC: UINavigationController
            switch self {
            case .characters:
                let characterVC = RMCharacterViewController()
                characterVC.navigationItem.largeTitleDisplayMode = .automatic
                navigationVC = createNavigationVC(with: characterVC, title: "Character", imageName: "person", tag: 1)
            case .locations:
                let locationvVC = RMLocationViewController()
                locationvVC.navigationItem.largeTitleDisplayMode = .automatic
                navigationVC = createNavigationVC(with: locationvVC, title: "Locations", imageName: "globe", tag: 2)
            case .episodes:
                let episodesVC = RMEpisodesViewController()
                episodesVC.navigationItem.largeTitleDisplayMode = .automatic
                navigationVC = createNavigationVC(with: episodesVC, title: "Episodes", imageName: "tv", tag: 3)
            case .settings:
                let settignsVC = RMSettingsViewController()
                settignsVC.navigationItem.largeTitleDisplayMode = .automatic
                navigationVC = createNavigationVC(with: settignsVC, title: "Settings", imageName: "gear", tag: 4)
            }
            navigationVC.navigationBar.prefersLargeTitles = true
            return navigationVC
        }
        
        private func createNavigationVC(
            with root: UIViewController,
            title: String,
            imageName: String,
            tag: Int
        ) -> UINavigationController {
            let navigationVC = UINavigationController(rootViewController: root)
            navigationVC.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: imageName), tag: tag)
            return navigationVC
        }
    }
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setUpTabs()
    }
    
    // MARK: - Private methods
    
    private func setUpTabs() {
        
        var navVC: [UINavigationController] = []
        
        TabType.allCases.forEach { type in
            navVC.append(type.getNavigationController())
        }
        
        setViewControllers(navVC, animated: true)
    }
}

