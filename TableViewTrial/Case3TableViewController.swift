//
//  Case3TableViewController.swift
//  TableViewTrial
//
//  Created by 신정연 on 1/6/24.
//

import UIKit

class Case3TableViewController: UITableViewController {

    var list = ["오늘 할 일을 적어주세요."]
    
    @IBOutlet var addButton: UIButton!
    @IBOutlet var shoppingTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addButton.layer.cornerRadius = 5
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingList") as! Case3TableViewCell
        
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    // 순서는 어떻게 해야 좋지.?
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let newItem : String = shoppingTextField.text ?? ""
        list.append(newItem)
        tableView.reloadData()
    }
    @IBAction func checkBoxTapped(_ sender: UIButton) {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingList") as! Case3TableViewCell
        
        cell.checkBoxButton.isHidden.toggle()
        cell.checkBoxFillButton.isHidden.toggle()
    }
}
