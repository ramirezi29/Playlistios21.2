//
//  Song.swift
//  PlayListiOS21.2
//
//  Created by Ivan Ramirez on 8/29/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

//#1..1

class Song: Equatable {
    
    static func == (lhs: Song, rhs: Song) -> Bool {
        if lhs.title != rhs.title { return false }
        if lhs.artist != rhs.artist { return false }
        return false
    }
    //whats in the class
    var title: String
    var artist: String
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = title
    }
}
