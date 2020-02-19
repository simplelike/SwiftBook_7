//
//  FirstScreenViewController.swift
//  SwiftBook_7
//
//  Created by Andrey Borovilov on 19/02/2020.
//  Copyright © 2020 Andrey Borovilov. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    private var contactList = Contact.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailContactVC = segue.destination as! DetailContactViewController
            detailContactVC.person = contactList[indexPath.row]
        }
    }

}

extension FirstScreenViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contactList[indexPath.row].name
        return cell
    }
}
