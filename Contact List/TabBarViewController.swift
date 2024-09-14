//
//  TabBarViewController.swift
//  Contact List
//
//  Created by user246073 on 9/14/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataStore = DataStore()
        persons = dataStore.generatePersons()
        navigationItem.backButtonTitle = "Back"
        
        if let viewControllers = self.viewControllers {
            for viewController in viewControllers {
                if let contactsVC = viewController as? ContactsListViewController {
                    contactsVC.persons = persons
                } else if let fullListVC = viewController as? FullListViewController {
                    fullListVC.persons = persons
                }
            }
        }
    }
}
    
    
