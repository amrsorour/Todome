//
//  ViewController.swift
//  Todome
//
//  Created by Amr Sorour on 2/16/19.
//  Copyright © 2019 Amr Sorour. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["findNemo", "Eat Eggs", "DestroyApple"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
//mark tableview - delegate method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        print (itemArray[indexPath.row])
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Add new item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
        }
        alert.addTextField { (alerttextfield) in
            alerttextfield.placeholder = "insert your desires here"
        }
        
        
     alert.addAction(action)
     present(alert, animated: true, completion: nil)
    }
}


