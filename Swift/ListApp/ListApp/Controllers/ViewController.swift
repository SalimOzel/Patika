//
//  ViewController.swift
//  ListApp
//
//  Created by Salim Özel on 20.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource  {
   
    @IBOutlet weak var tableView : UITableView!
    
    let data = ["Swift","Kotlim","Flutter","C#","Python","C","C++"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}

