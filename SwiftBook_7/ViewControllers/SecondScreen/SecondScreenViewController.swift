//
//  SecondScreenViewController.swift
//  SwiftBook_7
//
//  Created by Andrey Borovilov on 19/02/2020.
//  Copyright © 2020 Andrey Borovilov. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    private var contactList = Contact.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}
extension SecondScreenViewController:UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        
        switch indexPath.row {
            case 0:
                cell.textLabel?.text = contactList[indexPath.section].number
            case 1:
                cell.textLabel?.text = contactList[indexPath.section].email
            default:
                cell.textLabel?.text = "default"
        }
        return cell
    }
    
    
}
