//
//  PersonsInSectionsViewController.swift
//  EmployeeTableApp
//
//  Created by Bogdan Baskakov on 10/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class PersonsInSectionsViewController: UITableViewController {
    
    let persons = Person.getPersons()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.surname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionsCell", for: indexPath)
        
        let person = persons[indexPath.section]
        
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber
        
        return cell
    }

}
