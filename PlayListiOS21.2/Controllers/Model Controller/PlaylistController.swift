//
//  PlaylistController.swift
//  PlayListiOS21.2
//
//  Created by Ivan Ramirez on 8/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//
/*
 1. CRUD
 2. SINGLETON
 3. SOURE OF TRUTH
 */

import Foundation

class PlaylistController {
    //*Singleton* design pattern - We crate one initialized class so we can access it through out our project.
    ///Singleton - prevents two instanes to reach your variables and methods. It creates ONLY ONE instance to give you access to it's instances methods and variables.
    static let shared = PlaylistController()
    
    //*SOURCE OF TRUTH*
    /// Soure of Truth!!
    var playlists: [Playlist] = [] // needs to be an array. empty '= []' /default value of an empty array/ because playlist is empty when it first starts.
    
    // CREATE
    /// this creates a brand new playlist - and adds it to our SOURCE OF TRUTH!
    func create(title:String) { // what does the playlist have? title
        //line directly below is an instance of playlist.
        let playlist = Playlist(title: title) // pass in the title parameter
        //line directly below appends new playlist the user creates to our blank by default playlist
        playlists.append(playlist)
    }
    
    // DELETE
        func delete(playlistToDelete: Playlist) { // playlistToDelete is the name of the func that takes in a Playlist
        // first need to make your Model .swift files EQUAtable  make it conform to equatable
            guard let index = playlists.index(of: playlistToDelete) else { return }
            // want to get index of playlist. need to also unwrapp it // the index could be named anything but it keeps it simple
        playlists.remove(at: index)
  }
}

