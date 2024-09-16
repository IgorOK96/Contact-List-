//
//  ContactsListViewController.swift
//  Contact List
//
//  Created by user246073 on 9/14/24.
//

import UIKit

final class ContactsListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else  {return}
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.persons = persons[indexPath.row]
    }
}
//MARK: - UITableViewDataSource
extension ContactsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listSmall", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        cell.contentConfiguration = content
        return cell
    }
}

