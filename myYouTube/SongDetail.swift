//
//  SongDetail.swift
//  myYouTube
//
//  Created by Gokul Nath KP on 06/02/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import Foundation

class SongDetail {
    
    /************************** Private Members ****************************/
    
    private var _songURL: String!
    private var _songThumbnailURL: String!
    private var _songTitle: String!
    private var _songArtist: String!
    private var _songAdditionalDetails: String!
    
    /************************** Getters/Setters ****************************/
    
    var songURL: String {
        get {
            return _songURL
        } set {
            _songURL = newValue
        }
    }
    
    var songThumbnailURL: String {
        get {
            return _songThumbnailURL
        } set {
            _songThumbnailURL = newValue
        }
    }
    
    var songTitle: String {
        get {
            return _songTitle
        } set {
            _songTitle = newValue
        }
    }
    
    var songArtist: String {
        get {
            return _songArtist
        } set {
            _songArtist = newValue
        }
    }
    
    var songAdditionalDetails: String {
        get {
            return _songAdditionalDetails
        } set {
            _songAdditionalDetails = newValue
        }
    }
    
    /**************************** Dummy Data *******************************/
    
    public static func getDummyData() -> [Int: SongDetail] {
        var songDetailsList = [Int: SongDetail]()
        
        let songDetail1 = SongDetail()
        songDetail1.songURL = "https://www.youtube.com/watch?v=Ug88HO2mg44&feature=player_embedded"
        songDetail1.songThumbnailURL = "https://c-sf.smule.com/s42/arr/35/e5/0adbae6f-b11c-47ec-ba3d-d9dc351ba72d.jpg"
        songDetail1.songTitle = "Quit Playing Games With My Heart"
        songDetail1.songArtist = "Back Street Boys"
        songDetail1.songAdditionalDetails = "Standard YouTube License - 2017"
        songDetailsList[0] = songDetail1
        
        let songDetail2 = SongDetail()
        songDetail2.songURL = "https://www.youtube.com/watch?v=4fndeDfaWCg&feature=player_embedded"
        songDetail2.songThumbnailURL = "https://images-na.ssl-images-amazon.com/images/I/41DSF3W6C4L.jpg"
        songDetail2.songTitle = "I Want It That Way"
        songDetail2.songArtist = "Back Street Boys"
        songDetail2.songAdditionalDetails = "Standard YouTube License - 2017"
        songDetailsList[1] = songDetail2
        
        let songDetail3 = SongDetail()
        songDetail3.songURL = "https://www.youtube.com/watch?v=rSOzN0eihsE&feature=player_embedded"
        songDetail3.songThumbnailURL = "https://upload.wikimedia.org/wikipedia/en/0/02/Beautiful_(Akon_song).jpg"
        songDetail3.songTitle = "Beautiful"
        songDetail3.songArtist = "Akon ft. Colby O'Donis, Kardinal Offishall"
        songDetail3.songAdditionalDetails = "Standard YouTube License - 2017"
        songDetailsList[2] = songDetail3
        
        let songDetail4 = SongDetail()
        songDetail4.songURL = "https://www.youtube.com/watch?v=oUbpGmR1-QM&feature=player_embedded"
        songDetail4.songThumbnailURL = "https://upload.wikimedia.org/wikipedia/en/9/91/Jay_Sean_Ft._Lil_Wayne_-_Down.jpg"
        songDetail4.songTitle = "Down"
        songDetail4.songArtist = "Jay Sean ft. Lil Wayne"
        songDetail4.songAdditionalDetails = "Standard YouTube License - 2017"
        songDetailsList[3] = songDetail4
        
        return songDetailsList
    }
}
