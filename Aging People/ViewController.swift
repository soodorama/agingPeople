//
//  ViewController.swift
//  Aging People
//
//  Created by Neil Sood on 9/10/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var agingTableView: UITableView!
    
    var people = [
        "Neil",
        "Eli",
        "Isabell",
        "Ashwin",
        "Heather",
        "Quanglord",
        "Archana",
        "Med",
        "Ravi",
        "Christine",
        "Speros",
        "Amy"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agingTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return people.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgingCell", for: indexPath)
        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = String(arc4random_uniform(100)) + " years old"
        return cell
    }
    
}

