//
//  SongCell.swift
//  myYouTube
//
//  Created by Gokul Nath KP on 06/02/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

    @IBOutlet weak var songThumbnail: UIImageView!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var songArtist: UILabel!
    @IBOutlet weak var songAdditionalDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(songDetail: SongDetail) {
        songTitle.text = songDetail.songTitle
        songArtist.text = songDetail.songArtist
        songAdditionalDetails.text = songDetail.songAdditionalDetails
        
        let thumbnailURL = URL(string: songDetail.songThumbnailURL)
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: thumbnailURL!)
                DispatchQueue.global().sync {
                    self.songThumbnail.image = UIImage(data: data)
                }
            } catch {
                // Error Handling...
            }
        }
    }
}
