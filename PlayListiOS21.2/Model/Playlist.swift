//
//  Playlist.swift
//  PlayListiOS21.2
//
//  Created by Ivan Ramirez on 8/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation
class Playlist {
    var title: String
    var songs: [Song] = [] // its an array of songs
    
    init(title: String, songs: [Song] = []) { // song needs to be []
        self.songs = songs
        self.title = title
    }
}
