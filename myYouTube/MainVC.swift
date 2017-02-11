//
//  MainVC.swift
//  myYouTube
//
//  Created by Gokul Nath KP on 06/02/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var songList: UITableView!
    let songDetailsList = SongDetail.getDummyData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCloseButton()
        setupDataSource()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = StringConstants.APP_NAME
    }
    
    func setupCloseButton() {
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.stop, target: self, action: #selector(closeAction))
        button.tintColor = UIColor.black
        navigationItem.leftBarButtonItem = button
    }
    
    func closeAction(sender: UIBarButtonItem) {
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
    }
    
    func setupDataSource() {
        songList.delegate = self
        songList.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as? SongCell {
            let songDetail = songDetailsList[indexPath.row]!
            cell.updateUI(songDetail: songDetail)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songDetailsList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let songDetail = songDetailsList[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: songDetail)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let song = sender as? SongDetail {
                destination.songDetail = song
            }
        }
    }
}

