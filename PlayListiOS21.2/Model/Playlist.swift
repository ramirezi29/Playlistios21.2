//
//  Playlist.swift
//  PlayListiOS21.2
//
//  Created by Ivan Ramirez on 8/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation
class Playlist: Equatable {
    // now we can compair playlist and have access to helper methods
    static func == (lhs: Playlist, rhs: Playlist) -> Bool {
    if lhs.title != rhs.title { return false }
    if rhs.songs != rhs.songs { return false }
    return true
    }
    
    var title: String
    var songs: [Song] = [] // its an array of songs
    
    init(title: String, songs: [Song] = []) { // song needs to be []
        self.songs = songs
        self.title = title
    }
}
