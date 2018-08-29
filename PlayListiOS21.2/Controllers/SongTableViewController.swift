//
//  SongTableViewController.swift
//  PlayListiOS21.2
//
//  Created by Ivan Ramirez on 8/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class SongTableViewController: UITableViewController {
    @IBOutlet weak var artistTextField: UITextField!
    @IBOutlet weak var songTextField: UITextField!
    @IBOutlet weak var songHeaderImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .black, bottomColor: .purple)
        updatedHeaderView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
 
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    func updatedHeaderView() {
        songHeaderImage.image = UIImage(named: "cassets")
    }
}
