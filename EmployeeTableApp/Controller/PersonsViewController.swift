//
//  PersonsViewController.swift
//  EmployeeTableApp
//
//  Created by Bogdan Baskakov on 08/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    private let personsArray = Person.getPersons()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let personFullName = personsArray[indexPath.row].name + " " + personsArray[indexPath.row].surname
        
        cell.textLabel?.text = personFullName
        cell.imageView?.image = UIImage(named: personsArray[indexPath.row].name)
        
        return cell
    }

     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonDetailViewController
            detailVC.personName = personsArray[indexPath.row].name
            detailVC.personSurname = personsArray[indexPath.row].surname
            detailVC.personEmail = personsArray[indexPath.row].email
            detailVC.personPhoneNumber = personsArray[indexPath.row].phoneNumber
        }
     }

}
