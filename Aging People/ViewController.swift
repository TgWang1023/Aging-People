//
//  ViewController.swift
//  Aging People
//
//  Created by Tiange Wang on 9/5/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let list: [String] = ["Aydin", "Dominique", "Melissa", "Sterling", "Amya", "Uriah", "Rey", "Reilly", "Callie", "Tyrell", "Cara", "Robert"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = "\(5 + arc4random_uniform(90)) years old"
        return cell
    }
}

