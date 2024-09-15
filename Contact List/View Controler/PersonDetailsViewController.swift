//
//  PersonDetailsViewController.swift
//  Contact List
//
//  Created by user246073 on 9/14/24.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    var persons: Person!
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(persons.name) \(persons.surname)"
        phoneLabel.text = "Phone: \(persons.phoneNumber)"
        emailLabel.text = "Email: \(persons.email)"
    }
}
