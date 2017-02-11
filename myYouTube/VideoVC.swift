//
//  VideoVC.swift
//  myYouTube
//
//  Created by Gokul Nath KP on 11/02/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    private var _songDetail: SongDetail!
    
    var songDetail: SongDetail {
        get {
            return _songDetail
        } set {
            _songDetail = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        setupCloseButton()
        loadSongVideo()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = songDetail.songTitle
    }
    
    func setupCloseButton() {
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.stop, target: self, action: #selector(closeAction))
        button.tintColor = UIColor.black
        navigationItem.leftBarButtonItem = button
    }
    
    func closeAction(sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    func loadSongVideo() {
        webView.loadRequest(URLRequest(url: URL(string: songDetail.songURL)!))
    }

}
