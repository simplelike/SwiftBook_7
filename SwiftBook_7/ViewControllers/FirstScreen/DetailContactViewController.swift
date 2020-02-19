//
//  DetailContactViewController.swift
//  SwiftBook_7
//
//  Created by Andrey Borovilov on 19/02/2020.
//  Copyright © 2020 Andrey Borovilov. All rights reserved.
//

import UIKit

class DetailContactViewController: UIViewController {

    @IBOutlet var telNumberLabel: UILabel!
    @IBOutlet var emalLabel: UILabel!
    
    var person: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.name
        telNumberLabel.text = person.number
        emalLabel.text = person.email
    }
    

}
