//
//  AddContactViewController.swift
//  Delegation Tutorial
//
//  Created by Jack Terry on 12/16/18.
//  Copyright © 2018 Jack Terry. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController {
    
    @IBOutlet weak var mainBackground: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainBackground.layer.cornerRadius = 15
    }
    
    @IBAction func addContactButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
