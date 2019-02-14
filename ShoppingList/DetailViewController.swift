//
//  DetailViewController.swift
//  Challenge3App
//
//  Created by Simon Italia on 12/6/18.
//  Copyright © 2018 SDI Group Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var shoppingListItem: String?
    
    @IBOutlet weak var shoppingItemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    title = "Edit Shopping List Item"
    
    shoppingItemTextField.text = shoppingListItem
 
    }
    
}
