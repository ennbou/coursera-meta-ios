//
//  ViewController.swift
//  video_player
//
//  Created by bouchaib ennakr on 19/10/2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVide()
    }
    
    
    func playVide() {
        guard let path = Bundle.main.path(forResource: "test", ofType: "mov") else { return }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        present(playerViewController, animated: true){
            player.play()
        }
    }


}

