//
//  FullListViewController.swift
//  Contact List
//
//  Created by user246073 on 9/14/24.
//

import UIKit

class FullListViewController: UITableViewController { var persons: [Person]! }

// MARK: - UITableViewDataSource
extension FullListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bigList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = "\(person.name) \(person.surname)"
            content.textProperties.font = UIFont.boldSystemFont(ofSize: 16)
        case 1:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
            content.textProperties.font = UIFont.systemFont(ofSize: 14)
        default:
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
            content.textProperties.font = UIFont.systemFont(ofSize: 14)
        }

        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
