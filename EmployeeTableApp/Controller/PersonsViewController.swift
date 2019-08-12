//
//  PersonsViewController.swift
//  EmployeeTableApp
//
//  Created by Bogdan Baskakov on 08/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    private let persons = Person.getPersons()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        cell.textLabel?.text = person.name + " " + person.surname
        cell.imageView?.image = UIImage(named: person.name)
        
        return cell
    }

     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonDetailViewController
            detailVC.person = persons[indexPath.row]
        }
     }

}
