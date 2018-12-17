//
//  ViewController.swift
//  Delegation Tutorial
//
//  Created by Jack Terry on 12/16/18.
//  Copyright © 2018 Jack Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var contactTableView: UITableView!
    
    var contacts = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactTableView.delegate = self
        contactTableView.dataSource = self
    }

    @IBAction func addContactBarButton(_ sender: UIBarButtonItem) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as? AddContactViewController
    }
    
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
}

