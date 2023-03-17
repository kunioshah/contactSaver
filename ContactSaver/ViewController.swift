//
//  ViewController.swift
//  ContactSaver
//
//  Created by Kunal Shah on 2/26/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contacts = [
        Contact(name: "Bob", phoneNumber: "111111", email: "bah@gmail.com"),
        Contact(name: "Job", phoneNumber: "121111", email: "bahaha@gmail.com"),
        Contact(name: "Bobby", phoneNumber: "1989111", email: "zahahah@gmail.com"),
        Contact(name: "Johann", phoneNumber: "5105589", email: "johannm@gmail.com"),
        Contact(name: "Mr Github", phoneNumber: "githubnumber", email: "github@gmail.com")
    ]
    
    override func viewDidLoad() {
        //loads view, registers table view
        super.viewDidLoad()
        print("view loaded")
        contactTable.register(TableViewCell.nib(), forCellReuseIdentifier: "TableViewCell")
        contactTable.delegate = self
        contactTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //sets number of rows in tableview
        return contacts.count
    }
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        //for returning to first cell with done button
        contactTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //adds table view cells to table view
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        contactCell.configure(with: contacts[indexPath.row].name, number: contacts[indexPath.row].phoneNumber, email: contacts[indexPath.row].email)
        return contactCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //for making cell row size large enough
        return 80
    }
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var contactTable: UITableView!

}

