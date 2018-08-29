//
//  PlaylistTableViewController.swift
//  PlayListiOS21.2
//
//  Created by Ivan Ramirez on 8/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class PlaylistTableViewController: UITableViewController {

    @IBOutlet weak var playlistHeaderImage: UIImageView!
    
    @IBOutlet weak var playlistTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //view.addVerticalGradientLayer(topColor: .black , bottomColor: .blue)
        updatedHeaderView()

    }
    
    @IBAction func addPlaylistButtonTapped(_ sender: Any) { // The code neds to be in order because of its functions
        guard let title = playlistTextField.text, title != "" else { return }// need to add Guard to the Let and unwrapp it
        PlaylistController.shared.create(title: title)
        // this needs to populate to the cell
        //Hey Table View go do your job again - Re-Run your 2 required mehods. number of rows in section and cell for row at.
        tableView.reloadData()
        playlistTextField.text = "" // this code. after the user has pressed 'Add' set it back to empty
    }

    

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlaylistController.shared.playlists.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playlistCell", for: indexPath)
        let playlist = PlaylistController.shared.playlists[indexPath.row]
        cell.textLabel?.text = playlist.title // display an individual cell
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        
            let playlist = PlaylistController.shared.playlists[indexPath.row]
            PlaylistController.shared.delete(playlistToDelete: playlist)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
    func updatedHeaderView() {
        playlistHeaderImage.image = UIImage(named: "cassets")
    }

}

