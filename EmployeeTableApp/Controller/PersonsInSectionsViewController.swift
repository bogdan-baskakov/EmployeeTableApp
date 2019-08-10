//
//  PersonsInSectionsViewController.swift
//  EmployeeTableApp
//
//  Created by Bogdan Baskakov on 10/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class PersonsInSectionsViewController: UITableViewController {
    
    let personsArray = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ARRAY - \(personsArray)")
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personsArray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let personName =  personsArray[section].name + " " + personsArray[section].surname
        return personName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionsCell", for: indexPath)
        
        cell.textLabel?.text = personsArray[indexPath.row].email
        
        return cell
    }

}
