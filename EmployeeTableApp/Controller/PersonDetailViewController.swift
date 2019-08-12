//
//  DetailPersonsViewController.swift
//  EmployeeTableApp
//
//  Created by Bogdan Baskakov on 08/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        imageView.image = UIImage(named: person.name)
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        emailLabel.text = person.email
        phoneNumberLabel.text = person.phoneNumber
    }

}
