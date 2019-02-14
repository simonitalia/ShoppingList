//
//  ViewController.swift
//  Challenge3App
//
//  Created by Simon Italia on 12/3/18.
//  Copyright © 2018 SDI Group Inc. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var shoppingList = [String]()
    
    @IBAction func addShoppingItemButtonTapped(_ sender: UIBarButtonItem) {
        
        enterShoppingListItem()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "Shopping List"

    }
    
    //Set numbert of rows in table, based on shoppingList array elements
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingItem", for: indexPath)
        cell.textLabel?.text = shoppingList[indexPath.row]
        return cell
    }
    
    //Create enterShoppingListItem() method
    @objc func enterShoppingListItem() {
        
        //Create an alert with free text entry field
        let alertController = UIAlertController(title: "Enter Item", message: nil, preferredStyle: .alert)
        alertController.addTextField()
        
        //Handle the alert's submit action
        let submitAction = UIAlertAction(title: "Submit", style: .default) {
            [unowned self, alertController] (action: UIAlertAction) in
            let item = alertController.textFields![0]
            //let itemText = item.text
            self.insertShoppingList(item: item.text!)
            
        }
        
        //Handle alert submit functionality
        alertController.addAction(submitAction)
        present(alertController, animated: true)
        
    } //End enterShoppingLitsItem() method
    
    
    //Submit / enter shopping list item enetered by user in alert text field into the tableView
    func insertShoppingList(item: String) {
        shoppingList.insert(item, at: 0)
        
        let indexPath = IndexPath(row: 0, section: 0)
        //Get an indexPath to insert the answer into our tableView. Ensure row position = array index position
        
        tableView.insertRows(at: [indexPath], with: .automatic)
        //Insert a new row with answer at IndexPath into the tableView. Animate the row insert
        
    }
    
    //Enable swipe actions in selected tableView row
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        //Delete action
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            
            //Delete item selected at indexPath of array
            print(self.shoppingList)
            self.shoppingList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            print(self.shoppingList)
        }
        
        //Share action
        let share = UITableViewRowAction(style: .default, title: "Share") { (action, indexPath) in
            // share item selected at indexPath of array
            print("I want to share: \(self.shoppingList[indexPath.row])")
        }
        
        share.backgroundColor = UIColor.lightGray
        
        //Action array to return
        return [delete, share]
        
    }
    
    //Setup segue to pass Shopping List item to DetailViewController 2 steps:
    
    //1. Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MainVCToDetailVC" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.shoppingListItem = sender as? String
            
        }
    }
    
    //2. Perform Segue containing data object to DetailViewController based on the row tapped by the user
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let shoppingListItemToSend = shoppingList[indexPath.row]
        performSegue(withIdentifier: "MainVCToDetailVC", sender: shoppingListItemToSend)
        
    }

}

